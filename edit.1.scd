EDIT(1)

# NAME

edit - run configured editor

# SYNOPSIS

*edit* [args...]

# DESCRIPTION
*edit* script runs editor based on environment variables.

- *WAYLAND_EDITOR* and *WAYLAND_DISPLAY* -> run *$WAYLAND_EDITOR*
- *X11_EDITOR* and *DISPLAY* -> run *$X11_EDITOR*
- no one ise set -> run *$EDITOR* or _vi_

# ENVIRONMENT
- *WAYLAND_EDITOR*: Run on wayland sessions
- *X11_EDITOR*: Run on x11 sessions
- *EDITOR*: run if others are not possible
- *WAYLAND_DISPLAY*: if set this is a wayland session
- *DISPLAY*: if set and WAYLAND_DISPLAY is not set this is a x11 session

# SEE ALSO
_vi_(1),
_vim_(1),
_nano_(1),
_nvim_(1),
_emacs_(1),
_vis_(1),

# AUTHORS
Created by kurth4cker <kurth4cker@gmail.com>.

# HOMEPAGE
https://sr.ht/~kurth4cker/editor-wrapper

# SOURCE CODE REPOSITORY
https://git.sr.ht/~kurth4cker/editor-wrapper
