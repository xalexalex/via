`via` is a more efficient way to interact with your computer.

# Concept

Everything should be at most a few keystrokes away.

Once you get used to it, the time from when you decide to open a file (or application or website) to when you have it open in front of you will easily be less than one second.

Nobody should ever:

- browse folders searching for a file;
- search for the application to open in a launcher;
- search for an open window to switch to;
- reach for the mouse to open a file or launch an application;
- waste time doing things that can be done instantly by a computer.

If you have a document at `~/docs/work/drafts/letter.odt` you should _not_ hunt for it in your file manager and open it. You should run `via` (`Alt-space`), type "let" (or "work odt", or any combination of substrings), press `ENTER` and do what you wanted to do with that document.

# Usage

`via` can:

- open files (`/home/user/file.txt`);
- open folders (`/home/user/music`);
- open websites (`https://example.com`);
- switch to an open window/app;
- search the web (`https://duckduckgo.com/?q=`, `https://en.wikipedia.org/wiki/Special:Search?search=`);
- launch applications (`passmenu`, `gimp`, `st mutt`);
- run shell commands (`pkill hung`).

It is advisable to bind `via` to a hotkey such as `Alt-Space`.

When run, `via-menu` will be displayed. Type a few characters to select the entry you want to open and press `ENTER`. `via` will know if that's a file to open, program to launch, website or shell command.

To search the web, assuming your search engine is `via`'s first entry, just launch via, press `TAB`, type your query and press `ENTER`.

With appropriate URLs (such as `https://en.wikipedia.org/wiki/Special:Search?search=`) you will also be able to use `via` to run custom web searches and have your browser open the result directly.

# Configuration

`via` is made up of three parts:

- `via-feed` generates a list of menu options;
- `via-menu` interacts with you and records your choice;
- `via-open` opens or launches the choice.

However, `via` is a concept and as such it is implementation-independent.

`via-feed`, `via-menu`, and `via-open` are all configurable. To do so, copy them to `$HOME/.config/via` and edit them to your liking. Your version will automatically be used.

## via-feed

`via-feed` writes the menu options to standard output.

If you use the default `via-feed`, you can tweak it by editing the `shortcuts` and `websites` files, but you are encouraged to edit `via-feed` itself.
In particular, the `find` command may be tweaked to exclude big folders that shouldn't be indexed (such as hidden folders, source code directories, and anything you are unlikely to open with `via`).

## via-menu

`via-menu` reads options on standard input, presents them to you, and outputs your choice(s) to standard output.

By default, `dmenu` is used. However, you can use `fzf`, `rofi`, or even a combination of these (for example, `fzf` when run in a terminal and `dmenu` when run in a graphical environment).

## via-open

`via-open` reads newline-separated strings and:

- opens URLs in your favorite browser;
- opens files according to extension or mimetype, as specified in `via-open` itself;
- opens folders in your file manager;
- switches to open windows;
- runs shell commands.
