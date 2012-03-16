#!/bin/bash

PATH=${*:-.}

find $PATH -type d -exec chmod 755 {} \;
find $PATH -type f -exec chmod 644 {} \;

# EOF
