EDIT(1)

# NAME

edit - run configured editor

# SYNOPSIS

*edit* [args...]

# DESCRIPTION

*edit* script runs editor based on environment variables.

- *WAYLAND_EDITOR* and *WAYLAND_DISPLAY* -> run *$WAYLAND_EDITOR*
- *X11_EDITOR* and *DISPLAY* -> run *$X11_EDITOR*
- *CLI_EDITOR* -> run *$CLI_EDITOR*
- no one ise set -> run *$EDITOR* or _vi_

# ENVIRONMENT

- *WAYLAND_EDITOR*: Run on wayland sessions.
- *X11_EDITOR*: Run on x11 sessions.
- *CLI_EDITOR*: Run if no others are set and this is set.
- *EDITOR*: Run if others are not possible.
- *WAYLAND_DISPLAY*: If set, this is a wayland session.
- *DISPLAY*: If set and WAYLAND_DISPLAY is not set, this is a x11 session.

# SEE ALSO

_vi_(1),
_vim_(1),
_nano_(1),
_nvim_(1),
_emacs_(1),
_vis_(1),

# BUGS

Report bugs to kurth4cker's public inbox:
- Web Interface: https://lists.sr.ht/~kurth4cker/public-inbox
- Mail Address: ~kurth4cker/public-inbox@lists.sr.ht

# TIPS
If you want to every program execute *edit* itself. You can set *$EDITOR* to
*edit*. But you should also set *$CLI_EDITOR* to avoid infinite self execution
of *edit*:

```
export WAYLAND_EDITOR=gedit
export CLI_EDITOR=vim
export EDITOR=edit
```

# AUTHORS

Created by kurth4cker <kurth4cker@gmail.com>.

# HOMEPAGE

https://sr.ht/~kurth4cker/editor-wrapper

# SOURCE CODE REPOSITORY

https://git.sr.ht/~kurth4cker/editor-wrapper
