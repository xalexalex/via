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
- launch applications (`passmenu;`)
- run shell commands (`pkill hung;`, `st mutt;`)

# Installation

It is advisable to bind `via` to a hotkey such as `Alt-Space`.

# Technicalities

`via` relies on a few parts:

- something to generate a list of files based on criteria (`find`)
- a menu able to show a list, filter it and select an option according to user input (`dmenu`)
- a file opener (`vopen`)

However, `via` is a concept and as such it is implementation-independent. It can easily be customized to work with other programs. For example, `dmenu` can be substituted by `fzf` run in a terminal; `vopen` can be substituted by `xdg-open`.
