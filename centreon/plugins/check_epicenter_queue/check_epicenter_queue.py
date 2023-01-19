#!/bin/python3
import urllib, urllib.parse, urllib.request, sys,pymssql;


# Command line parser
from optparse import OptionParser

parser = OptionParser(usage='%prog -H sqlagl -u <sql user> -p <sql password>')
parser.add_option('-v', '--version', dest='version', default=False, action='store_true', help='Print the version of this script')
parser.add_option('-H', '--hostname', dest='hostname', type='string', help='SQL Server host')
parser.add_option('-u', '--user', dest='username', type='string', help='SQL username')
parser.add_option('-p', '--password', dest='password', type='string', help='SQL password')
parser.add_option('-w', '--warning', dest='warning', type='string', help='Warning threshold')
parser.add_option('-c', '--critical', dest='critical', type='string', help='Critical threshold')

(options, args) = parser.parse_args()

# Print the version of this script
if options.version:
        print('Version 1.0')
        sys.exit(0)

# Validate the user input...
if not options.hostname and not options.username and not options.password and not options.warning and not options.critical:
        parser.print_help()
        sys.exit(3)

if not options.hostname:
        parser.error('Hostname is required, use parameter [-H|--hostname]')
        sys.exit(3)

if not options.username:
        parser.error('Username is required, use parameter [-c|--user]')
        sys.exit(3)

if not options.password:
        parser.error('Password is required, use parameter [-p|--password]')
        sys.exit(3)

if not options.warning:
        parser.error('Warning threshold is required, use parameter [-w|--warning]')
        sys.exit(3)

if not options.critical:
        parser.error('Critical threshold is required, use parameter [-c|--critical]')
        sys.exit(3)

DB_NAME='SIntegralHLab'

conn = pymssql.connect(server=options.hostname, user=options.username, password=options.password, database=DB_NAME)

cursor = conn.cursor()
cursor.execute("SELECT count(*) from LAB_TempProtocoloEnvio")
row = cursor.fetchone()
value = row[0]

if value < int(options.warning):
    print("OK: below {0} records in queue|records={1}".format(options.warning, value))
    conn.close()
    sys.exit(0)
if value > int(options.critical):
    print("CRITICAL: above {0} records in queue|records={0}".format(options.critical, value))
    conn.close()
    sys.exit(2)
 
print("WARNING: between {0} and {1} records in queue|records={2}".format(options.warning, options.critical, value))
conn.close()
sys.exit(1)

