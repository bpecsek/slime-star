[![Build Status](https://github.com/slime/slime/workflows/CI/badge.svg)](https://github.com/slime/slime/actions)
[![MELPA](http://melpa.org/packages/slime-badge.svg?)](http://melpa.org/#/slime) [![MELPA Stable](http://stable.melpa.org/packages/slime-badge.svg?)](http://stable.melpa.org/#/slime)

Overview
--------

SLIME is the Superior Lisp Interaction Mode for Emacs.

SLIME extends Emacs with support for interactive programming in Common
Lisp. The features are centered around slime-mode, an Emacs minor-mode that
complements the standard lisp-mode. While lisp-mode supports editing Lisp
source files, slime-mode adds support for interacting with a running Common
Lisp process for compilation, debugging, documentation lookup, and so on.

For much more information, consult [the manual][1].


SLIME-STAR
----------

This is a SLIME fork that comes with some extra contribs pre-installed:

- [Lisp System Browser](https://github.com/mmontone/lisp-system-browser)
- [SLIME Doc Contribs](https://github.com/mmontone/slime-doc-contribs)
- [Quicklisp Systems](https://github.com/mmontone/quicklisp-systems)
- Quicksearch utility
- [Slime Breakpoints](https://github.com/mmontone/slime-breakpoints)

Also may add some custom utilities and menus.

Quick setup instructions
------------------------

Clone this repository using --recursive option (this repo has git submodules):

```
git clone --recursive https://github.com/mmontone/slime-star.git
```

In your `.emacs`:

```elisp
;; Setup load-path, autoloads and your lisp system
;; Not needed if you install SLIME via MELPA
(add-to-list 'load-path "~/dir/to/cloned/slime-star")
(require 'slime-autoloads)
(setq inferior-lisp-program "/opt/sbcl/bin/sbcl")
;; Add slime-star to slime-contribs:
(setq slime-contribs '(slime-fancy slime-star))
```

Install some dependencies from Quicklisp:

```lisp
(ql:quickload '(:asdf :alexandria :drakma :dexador))
```

Use `M-x slime` to fire up and connect to an inferior Lisp. SLIME will now automatically be available in your Lisp source buffers.

Troubleshooting
---------------

`(ql:uninstall :swank)`

License
-------

SLIME and SLIME-STAR are free software. All files, unless explicitly stated otherwise, are public domain.

[1]: http://common-lisp.net/project/slime/doc/html/
[2]: http://melpa.org/#/getting-started
[3]: http://www.common-lisp.net/project/slime/#mailinglist
[5]: https://github.com/slime/slime/blob/master/CONTRIBUTING.md
[6]: https://github.com/slime/slime/issues?labels=workaround&state=closed
[7]: http://common-lisp.net/project/slime/doc/html/Installation.html#Installing-from-Git
