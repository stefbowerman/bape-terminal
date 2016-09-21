#!/usr/bin/env bash
# Base16 Bape - Pantheon Terminal color scheme install script
# Stefan Bowerman (http://github.com/stefbowerman)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#ede3d9"
gsettings set "$SCHEMA" foreground "#685e54"
gsettings set "$SCHEMA" palette "#ede3d9:#aa7944:#597a56:#d8cea3:#f1a856:#dbd886:#379b58:#e2cdb5:#9c8a79:#aa7944:#597a56:#d8cea3:#f1a856:#dbd886:#379b58:#171717"
gsettings set "$SCHEMA" cursor-color "#171717"

unset SCHEMA
