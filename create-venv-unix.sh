#! /usr/bin/env bash

if [ -d .venv ]; then
    echo ".venv already exists. Remove it first if you want to recreate it." >&2
    exit 1
fi

if [ ! -e requirements.txt ]; then
    echo "requirements.txt does not exist." >&2
fi

echo "Creating virtual environment in .venv"
python3 -m venv .venv
PATH=.venv/bin:"$PATH"
echo "Upgrading 'pip'"
pip3 install --upgrade pip
echo "Installing requirements"
pip3 install -r requirements.txt