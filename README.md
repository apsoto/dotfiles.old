Alex Soto's DOT files
=====================

DOTFILES files for configuring a system the way I like it.  I spend most of 
my time on a mac, so I haven't spent any time adding linux compatibility.

Features
--------
A brief description of items of note.

### conf.d style bash configuration
The .bashrc script sources the .sh files in the .bash.d dir.  Note the 
files are sourced in the lexicographical order.  I try to keep the conf files
indepedent or additive so their order doesn't matter.  However in some cases
you have to play with the filename to get things to load in order you want.
