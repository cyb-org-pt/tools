#!/usr/bin/python -Wall
# -*- coding: utf8 -*-
from string import Template
import sys
#from os import environ as env

values = {
    "name"      : "John Unix",
    "birthdate" : "1970-01-01",
    "address"   : "Bell Labs, Berkeley Heights, New Jersey, United States of America",
}

# Fetching the request line by line can be very slow...
#step = ""
#request = ""
#while step not in ( "\r\n", "\r", "\n" ) :
#    step = sys.stdin.readline()
#    request += step

print "HTTP/1.0 200 OK"
print "Content-Type: text/html; charset=utf-8"
print ""

template_file = open( "template.html" )
print Template( template_file.read() ).substitute( values )
#print request

# http://stackoverflow.com/questions/7955138/addressing-sys-excepthook-error-in-bash-script
# Trying to avoid the error messages:
#  close failed in file object destructor:
#  sys.excepthook is missing
#  lost sys.stderr

try:
    sys.stdout.close()
except:
    pass
try:
    sys.stderr.close()
except:
    pass

