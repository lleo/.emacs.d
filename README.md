This is my personal .emacs.d directory. I reconstructed it from the original
to clean up all the cruft that had developed.

KEY FEATURES
============

I wanted various programming modes and their configurations to have a single
point of configuration. Hence, the init.el calles various mylisp/setup-*.el
files. As you see that mostly the case.

The next big thing was I wanted bad white space behaviour to show up in big
bright ugly font faces. See mylisp/global-defaults.el file for that, in the
"whitespace-style" setting and turning on "(global-whitespace-mode t)".

You will find that spaces before tab will be pointed out with a big spotlight.

For example:

      	This line shows up under my  emacs config as two gray-background spaces
    and the tab is replace by "»  " or "&raquo;&nbsp;&nbsp;" characters. If you
    are a python person you will love this. If you are just a pedantic twit
    about whitespace (like me) you'll like it as well. If you don't care what
    whitespace is in your white space it'll be annoying. You can control the
    behaviour in the mylisp/global-defaults.el file under the "whitespace-style"
    variable there.

Well behaved whitespace just looks like whitespace.

In programming modes I always show tabs with the "»  " characters. I program
with the "tabs for indentation, spaces for alignment" philosophy
(see https://www.emacswiki.org/emacs/SmartTabs page). Hence, I use
smart-tabs-mode where I can (see mylist/setup-smart-tabs.el).

Also, in programming modes, trailing white space is shown as well as extra
white space in empty lines and the end of file.

INSTALL
=======

I attempted to install this on a clean account and found you must do a few
things to install it without any trouble.

First to create a "clean" account I found an simple unix trick:

      cd ~
      mkdir tmp-home
      cp {all my shell init scripts} tmp-home/
      HOME=`pwd`/tmp-home
      zsh -i

Of course, you don't need to do that. Just make sure you don't have a
~/.emacs.d  directory. And be connected to the internet.

First clone this repo:

      git clone https://github.com/lleo/.emacs.d.git

Before you start emacs the first time you need to edit the init.el file.

1) Comment out the "(require 'setup-clojure)" line with two semi-colons.
2) Comment out the "(load-theme 'sanityinc-tomorrow-bright)" line; again
with two semi-colons. BTW two semi-colons cuz emacs tries to indent single
semi-colons to a 40 tab mark; grrr!. Of course, you'll probably be tweaking
the init.el file with vi like I did so this doesn't matter; I am just anal.

Now start emacs. It will install a bunch of packages for you that my config
uses. This takes a few minutes; I don't think more than 5. I did this in GUI
mode with "emacs &" on the command line. GUI mode matters for the color-theme.

The first thing you need to do is install three packages. The cider pacakges
require manual installation for some reason. It is trivial to do "manual"
installation of packages. In your big happy fresh emacs window  do
"M-x list-packages". Let it connect an list all the packages from the four
package repos. BTW gnu and marmalade are there, but mostly I focus on using
melpa-stable and melpa.

Find "ac-cider" (C-s ac-cider works for me). Type a single 'i' that marks
the package to be installed.

Find "cider" (C-s cider; and repeat C-s till you find "cider" in the "Package"
column). Again mark it for installation with a simple 'i'.

Find "color-theme-san" (ditto). On my machine the package
listing truncates long module names so all I see is "color-theme-san...". Verify
this is "Chris Kempson's various Tomorrow themes" from the description field.
And mark it for installation with a simple 'i'.

Lastly, type a single 'x' command to execute the three installs.

Now open your ~/.emacs.d/init.el file with C-x C-f. And un-comment the
";;(require 'setup-clojure)" and ";;(load-theme 'sanityinc-tomorrow-bright)"
lines.

Quit emacs C-x C-c (duh). And restart. Oops! No, before you restart, delete
"rm ~/.emacs.d/.emacs.desktop". That is a nice (mostly) but annoying
(occationally) file that save the state of your emacs desktop. Your colors
were black-on-white and with the new color-theme should be white-on-black,
but if you don't delete the .emacs.desktop file your new pretty white-on-
black desktop will have black-on-white text, which is really f'dup.
