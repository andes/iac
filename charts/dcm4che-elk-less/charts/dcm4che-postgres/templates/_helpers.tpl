{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "dcm4che-postgres.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "dcm4che-postgres.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "dcm4che-postgres.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "dcm4che-postgres.labels-primary" -}}
helm.sh/chart: {{ include "dcm4che-postgres.chart" . }}
{{ include "dcm4che-postgres.selectorLabels-primary" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "dcm4che-postgres.labels-replica" -}}
helm.sh/chart: {{ include "dcm4che-postgres.chart" . }}
{{ include "dcm4che-postgres.selectorLabels-replica" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "dcm4che-postgres.selectorLabels-primary" -}}
app.kubernetes.io/name: {{ include "dcm4che-postgres.name" . }}-primary
app.kubernetes.io/instance: {{ .Release.Name }}-primary
{{- end -}}
{{- define "dcm4che-postgres.selectorLabels-replica" -}}
app.kubernetes.io/name: {{ include "dcm4che-postgres.name" . }}-replica
app.kubernetes.io/instance: {{ .Release.Name }}-replica
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "dcm4che-postgres.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "dcm4che-postgres.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}