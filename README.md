## Skeleton common lisp project.

I usually like to start with a sample skeleton lisp project, but there was no good place
that pulled all the peices together into a single coherant buildable executable.

This is a small demo, that probably can be extended out to more things when I figure out how.


### Requirements

* sbcl installed.
* make installed

### Modification

Its super unlikely that your project is going to be called lisp-skeleton client.  Please searcht through the sources and replace this string with your project name.

### Building

Lisp itself kinda has some weirdo build system, with systems, and quicklisp. I have attempted to mask all this behind 'make.

