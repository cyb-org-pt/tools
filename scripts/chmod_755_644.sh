#!/bin/bash

TARGETS=${*:-.}

find $TARGETS -type d -exec chmod 755 {} \;
find $TARGETS -type f -exec chmod 644 {} \;

# EOF
