#!/bin/bash

if [[ -f requirements.txt ]]; then
  echo -e "==>Installing additional requirements..."
  pip3 install --requirement requirements.txt
fi

if [[ $# -eq 0 ]]; then
  echo -e "==>Running shell..."
  exec bash
fi

exec "$@"
