#!/bin/bash

exit_() {
if [ -z "$1" ]
then
echo exit "$?" # exit 0 or exit 1
else
echo exit "$1"
fi
}
