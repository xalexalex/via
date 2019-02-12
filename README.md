`via` is a more efficient way to interact with your computer.

# Concept

Everything should be at most a few keystrokes away.

Nobody should ever:

- browse folders searching for a file
- reach for the mouse to open a file or launch an application
- waste time doing things that should be done by a computer.

# Usage

`via` can:

- open files (`/home/user/file.txt`)
- open folders (`/home/user/music`)
- open websites (`https://example.com`)
- launch applications (`passmenu`, `gimp`, `st mutt`)
- run shell commands (`pkill hung`)

It is advisable to bind `via` to a hotkey such as `Alt-Space`.

# Configuration

`via` is made up of three parts:

- `via-feed` generates a list of menu options
- `via-menu` interacts with the user and records his choice
- `via-open` opens or launches the choice

However, `via` is a concept and as such it is implementation-independent.

`via-feed`, `via-menu`, and `via-open` are all configurable. To do so, copy them to `$HOME/.config/via` and edit them to your liking. Your version will automatically be used in place of the default executable.

## via-feed

`via-feed` is a simple script that writes the menu options to standard output.

In its default state, the user can conveniently edit the `shortcuts` and `websites` files, but he is encouraged to edit `via-feed` itself.
In particular, the `find` command may be tweaked to exclude big folders that shouldn't be indexed (such as hidden folders and source code directories).

## via-menu

`via-menu` is a simple script that reads options on standard input and outputs the choice(s) to standard output, separated by newlines.

By default, `dmenu` is used. However, you can use `fzf`, `rofi`, or even a combination of these (for example, `fzf` when run in a terminal and `dmenu` when run in a graphical environment).

## via-open

`via-open` is a simple script that reads newline-separated strings and:

- opens URLs in the user's favorite browser;
- opens files according to extension or mimetype, as specified in `via-open` itself;
- opens folders in the user's file manager;
- runs shell commands.
