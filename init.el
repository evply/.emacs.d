;;;init.el
(add-to-list 'load-path "~/.emacs.d/config")

(require 'evply-default)

;refer function require-package,require-packages 
;add not elpa packages dir to load-path
(require 'evply-package)

(require 'evply-foundation)

;; (require 'evply-clojure)
;; (require 'evply-web)
