#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

# Use venv python if it exists, otherwise system python3
if [ -f venv/bin/python ]; then
    PYTHON=venv/bin/python
else
    PYTHON=python3
    export PYTHONPATH="venv/lib/python3.10/site-packages:$PYTHONPATH"
fi

exec "$PYTHON" -u main.py
