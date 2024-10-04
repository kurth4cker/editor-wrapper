#!/bin/sh
# SPDX-License-Identifier: ISC
# SPDX-FileCopyrightText: 2024 kurth4cker <kurth4cker@gmail.com>

if [ "$WAYLAND_EDITOR" -a "$WAYLAND_DISPLAY" ]; then
	editor="$WAYLAND_EDITOR"
elif [ "$X11_EDITOR" -a "$DISPLAY" ]; then
	editor="$X11_EDITOR"
elif [ "$CLI_EDITOR" ]; then
	editor="$CLI_EDITOR"
else
	editor="${EDITOR:-vi}"
fi

exec $editor "$@"
