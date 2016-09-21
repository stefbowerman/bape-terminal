#!/usr/bin/env bash
# Base16 Bape - Mate Terminal color scheme install script
# Stefan Bowerman (http://github.com/stefbowerman)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Bape Light"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-bape-light"
[[ -z "$DCONFTOOL" ]] && DCONFTOOL=dconf
[[ -z "$BASE_KEY" ]] && BASE_KEY=/org/mate/terminal/profiles

PROFILE_KEY="$BASE_KEY/$PROFILE_SLUG"

dset() {
  local key="$1"; shift
  local val="$1"; shift

  "$DCONFTOOL" write "$PROFILE_KEY/$key" "$val"
}

# Because gconftool doesn't have "append"
glist_append() {
  local key="$1"; shift
  local val="$1"; shift

  local entries="$(
    {
      "$DCONFTOOL" read "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
      echo "'$val'"
    } | head -c-1 | tr "\n" ,
  )"

  "$DCONFTOOL" write "$key" "[$entries]"
}

# Append the Base16 profile to the profile list
glist_append /org/mate/terminal/global/profile-list "$PROFILE_SLUG"

dset visible-name "'$PROFILE_NAME'"
dset palette "'#ede3d9:#aa7944:#597a56:#d8cea3:#f1a856:#dbd886:#379b58:#e2cdb5:#9c8a79:#aa7944:#597a56:#d8cea3:#f1a856:#dbd886:#379b58:#171717'"
dset background-color "'#ede3d9'"
dset foreground-color "'#685e54'"
dset bold-color "'#685e54'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"
