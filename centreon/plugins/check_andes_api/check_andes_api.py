#!/bin/python3
import urllib, urllib.parse, urllib.request, sys,json;


# Command line parser
from optparse import OptionParser

parser = OptionParser(usage='%prog -H cloud.example.com -p https -c [api,db,puco,all]')
parser.add_option('-v', '--version', dest='version', default=False, action='store_true', help='Print the version of this script')
parser.add_option('-H', '--hostname', dest='hostname', type='string', help='Andes API server')
parser.add_option('-P', '--protocol', dest='protocol', type='string', help='HTTP/HTTPS')
parser.add_option('-c', '--check', dest='check', choices=['api','db','puco','all'], help='Check api, db, puco, or all')

(options, args) = parser.parse_args()

# Print the version of this script
if options.version:
        print('Version 1.0')
        sys.exit(0)

# Validate the user input...
if not options.hostname and not options.check and not options.protocol:
        parser.print_help()
        sys.exit(3)

if not options.hostname:
        parser.error('Hostname is required, use parameter [-H|--hostname]')
        sys.exit(3)

if not options.check:
        parser.error('Check is required, use parameter [-c|--check]')
        sys.exit(3)

if not options.protocol:
        parser.error('Protocol is required, use parameter [-P|--protocol]')
        sys.exit(3)

url = '{0}://{1}/api/core/status'.format(options.protocol, options.hostname)

def check_service(response_service_status):
    return response_service_status == 'OK'

def get_text_for_status(boolean_status):
    if boolean_status:
        return "OK"
    else:
        return "ERROR"

def check_response(option, response):
    if option=='api':
        service_ok = check_service(response["API"])
        if service_ok:
            print('OK: {0} is OK | {0}=OK'.format("API"))
            sys.exit(0)
        else:
            print('CRITICAL: {0} is DOWN | {0}=ERROR'.format("API"))
            sys.exit(2)
    if option=='db':
        service_ok = check_service(response["DB"])
        if service_ok:
            print('OK: {0} is OK | {0}=OK'.format("DB"))
            sys.exit(0)
        else:
            print('CRITICAL: {0} is DOWN | {0}=ERROR'.format("DB"))
            sys.exit(2)
    if option=='puco':
        service_ok = check_service(response["PUCO"])
        if service_ok:
            print('OK: {0} is OK | {0}=OK'.format("PUCO"))
            sys.exit(0)
        else:
            print('CRITICAL: {0} is DOWN | {0}=ERROR'.format("PUCO"))
            sys.exit(2)
    if option=='all':
        services_status = {}
        services_status['API'] = check_service(response["API"])
        services_status['DB'] = check_service(response["DB"])
        services_status['PUCO'] = check_service(response["PUCO"])
        if services_status['API'] and services_status['DB'] and services_status['PUCO']:
            print('OK: All services are up | API=OK;DB=OK;PUCO=OK')
            sys.exit(0)
        else:
            api_status_text = get_text_for_status(services_status["API"]);
            db_status_text = get_text_for_status(services_status["DB"]);
            puco_status_text = get_text_for_status(services_status["PUCO"]);
            print('CRITICAL: API is {0};DB is {1};PUCO is {2}| API={0};DB={1};PUCO={2}'.format(api_status_text, db_status_text, puco_status_text))
            sys.exit(2)

try:
    request = urllib.request.Request(url)
    response = urllib.request.urlopen(request)
    jsonBody = json.load(response)
    check_response(options.check, jsonBody)
    sys.exit(0)


except urllib.error.HTTPError as error:
    print('Request error ({0}) - {1}'.format(error.code, error.reason))
    sys.exit(3)
