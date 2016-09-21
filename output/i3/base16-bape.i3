# ~/.i3/config
# i3 config template
# Base16 Bape by Stefan Bowerman (http://github.com/stefbowerman)
# template by Matt Parnell, @parnmatt

set $base00 #171717
set $base01 #3f3a36
set $base02 #685e54
set $base03 #9c8a79
set $base04 #ddc3a4
set $base05 #e2cdb5
set $base06 #e7d8c6
set $base07 #ede3d9
set $base08 #aa7944
set $base09 #dbc040
set $base0A #d8cea3
set $base0B #597a56
set $base0C #379b58
set $base0D #f1a856
set $base0E #dbd886
set $base0F #7c5041

client.focused $base0D $base0D $base00 $base01
client.focused_inactive $base02 $base02 $base03 $base01
client.unfocused $base01 $base01 $base03 $base01
client.urgent $base02 $base08 $base07 $base08

## remember to add the rest of your configuration

bar {
    ## remember to add your favourite status bar, i.e.,
    # status_command i3status
    
        colors {
        separator $base03
        background $base01
        statusline $base05
        focused_workspace $base0C $base0D $base00
        active_workspace $base02 $base02 $base07
        inactive_workspace $base01 $base01 $base03
        urgent_workspace $base08 $base08 $base07
    }
}


