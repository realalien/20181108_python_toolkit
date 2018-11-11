#!/usr/bin/env bash

python -c "import pycodestyle"
if [ $? == 0 ] ; then
  pycodestyle "$@"   # "$@" expands to all command line parameters separate by spaces
else
  echo "Installing pycodestyle online ..."
  pip install pycodestyle
fi
