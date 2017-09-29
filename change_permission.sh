#!/bin/bash

find . -type d -exec chmod 774 {} \;
find . -type f -exec chmod 664 {} \;

