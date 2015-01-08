(add-to-list 'load-path "~/.emacs.d/config")

(require 'axpiry-default)

;refer function require-package,require-packages 
;add not elpa packages dir to load-path
(require 'axpiry-package)

(require 'axpiry-foundation)

(require 'axpiry-lisp)
(require 'axpiry-python)
