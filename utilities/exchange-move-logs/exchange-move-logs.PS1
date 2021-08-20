# ----------------------------------------------------------------------- Config
$EXCHANGE_FOLDER = "E:\backuptest\origen"
$EXCHANGE_DEST_BACKUP_FOLDER = "E:\backuptest\destino"
$BACKUPS_TO_KEEP_PER_LEVEL = 3


# ----------------------------------------------------------------------- Startup info
# 7zip
$7zipPath = "$env:ProgramFiles\7-Zip\7z.exe"
Set-Alias 7zip $7zipPath

# Exchange
$EXCHANGE_BIN_FOLDER = "$env:ProgramFiles\Microsoft\Exchange Server\V14\Bin\eseutil.exe"

# Current level
function Validate-Params {
    param (
            [Parameter(Mandatory)]
            $args
          )
    $validLevels = "A", "B", "C"
    if ($args.count -eq 0) {
        throw "El nivel A,B,C es requerido"
    }
    if (-Not($args[0] -in $validLevels)) {
        throw "Solo los niveles A, B, C son validos"
    }
}
Validate-Params $args
$LEVEL = $args[0]


# ---------------------------------------------------------------------- Functions
function Get-Mk-Execution-Result {
    param (
            [Parameter(Mandatory)]
            [string] $Lvl
          )
    $data = Get-Data-For-Level $Lvl
    $mkCommandResponse = (eseutil /mk (($data.sourceFolder)+'\'+($data.fileStartsWith)+'.chk'))
    return  [string]$mkCommandResponse
    <# -- Demo eseutil response 
     Microsoft(R) Exchange Server Database Utilities
     Version 6.5
     Copyright (C) Microsoft Corporation. All Rights Reserved.

     Initiating FILE DUMP mode...
           Checkpoint file: C:/Program files/exchsrvr/MDBdata/E00.chk

           LastFullBackupCheckpoint: (0x0,0,0)
           Checkpoint: (0x7BF4,23D1,4A)
           FullBackup: (0x9A49,8,16)
           FullBackup time: 05/12/2006 01:18:55
           IncBackup: (0x33DF,8,16)
           IncBackup time: 11/17/2004 21:44:46
           Signature: Create time:10/23/2003 12:11:53 Rand:5701204 Computer:
           Env (CircLog,Session,Opentbl,VerPage,Cursors,LogBufs,LogFile,Buffers)
               (    off,    352,  17600,   2492,  17600,    500,  10240, 147456)

     Operation completed successfully in 1.62 seconds.
    #>
}

function Get-Checkpoint {
    param(
        [Parameter(Mandatory)]
        [string] $Lvl
    )
    $mkCommandResponse = Get-Mk-Execution-Result $Lvl
    if ($mkCommandResponse -match ' Checkpoint: \(0x(?<checkpoint>[A-Z0-9]+),') {
        return $Matches.checkpoint
    }
    Write-Error "La respuesta de eseutil no fue la esperada y no pude obtener el checkpoint"
    Write-Error $mkCommandResponse
    throw "Terminando la ejecucion por el error anterior"
}

function Get-Data-For-Level {
    param(
        [Parameter(Mandatory)]
        [string] $Lvl
    )
    switch($Lvl) {
        "A" {return @{fileStartsWith="E03"; sourceFolder="$EXCHANGE_FOLDER\Nivel A\Logs"; destinationFolder="$EXCHANGE_DEST_BACKUP_FOLDER\Nivel A"}}
        "B" {return @{fileStartsWith="E00"; sourceFolder="$EXCHANGE_FOLDER\Nivel B\Logs"; destinationFolder="$EXCHANGE_DEST_BACKUP_FOLDER\Nivel B"}}
        "C" {return @{fileStartsWith="E04"; sourceFolder="$EXCHANGE_FOLDER\Nivel C\Logs"; destinationFolder="$EXCHANGE_DEST_BACKUP_FOLDER\Nivel C"}}
    }
}

function Get-Files-After-Checkpoint {
    param (
        [Parameter(ValueFromPipeline=$true)]
        [string[]]$logFiles
    )
    Begin {
        $checkpoint = Get-Checkpoint $LEVEL
        $found = $false
        $fileStartsWith = (Get-Data-For-Level $LEVEL).fileStartsWith
    }
    Process {
        foreach($file in $logFiles) {
            if ($found -ne $false) {
                return $file
            } else {
                $found = $file -like "*$fileStartsWith*$checkpoint.log*"
            }
        }
    }
    End {}
}

function Remove-Files-In-Destination-Folder {
    $data = Get-Data-For-Level $LEVEL
    Remove-Item ($data.destinationFolder+"\*.log")
}

function Move-Files {
    param (
        [Parameter(ValueFromPipeline=$true)]
        [string[]]$filesToMove
    )
    Begin {
        $data = Get-Data-For-Level $LEVEL
        # Remove-Files-In-Destination-Folder # Only remove after the script finishes
    }
    Process {
        foreach($file in $filesToMove) {
            Write-Output ($data.sourceFolder+"\"+$file)
            Move-Item -Path ($data.sourceFolder+"\"+$file) -Destination ($data.destinationFolder+"\"+$file)
        }
    }
    End {}
}

function Count-Files-In-Folder {
    param (
        [Parameter(Mandatory)]
        [string] $folder
    )
    return Get-ChildItem $folder -Recurse -File | Measure-Object | %{$_.Count}
}
 
function Compress-Destination-Folder {
    $data = Get-Data-For-Level $LEVEL
    $filesToCompress = Count-Files-In-Folder $data.destinationFolder
    if ($filesToCompress -eq 0) {
        throw "No hay archivos por comprimir"
    }
    7zip a ($data.destinationFolder+'\..\Logs_bk_nivel_'+$LEVEL+'-'+(Get-Date -Format "yyyyMMddHHmm")+'.7z') ($data.destinationFolder)
    Remove-Files-In-Destination-Folder
}

function Remove-Old-Backups {
    $data = (Get-Data-For-Level $LEVEL)
    Get-ChildItem -Path ($data.destinationFolder+"\..\")  -File -Name -Include ("Logs_bk_nivel_"+$LEVEL+"*.7z") |   
        Sort-Object -Descending | 
        Select -Skip $BACKUPS_TO_KEEP_PER_LEVEL | 
        ForEach-Object {$data.destinationFolder+"\..\\"+$_} |  
        Remove-Item
}
 

# ----------------------------------------------------------------------- Main code
Get-ChildItem -Path (Get-Data-For-Level $LEVEL).sourceFolder -File -Recurse -Force -Include *.log | 
    Sort-Object -Descending -Property LastWriteTime |  
    ForEach-Object {$_.Name} |  
    Get-Files-After-Checkpoint |  
    Move-Files

Compress-Destination-Folder

Remove-Old-Backups

