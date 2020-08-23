#!/usr/bin/env bash

sudo -v 1>/dev/null 2>/dev/null && echo "The user $(id -un) is having sudo privilages on this host $(hostname)" || echo "The user $(id -un) is not having sudo privilages on this host $(hostname)"
