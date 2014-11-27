;;;evply-clojure.el
;;;dependence: evply-package.el,evply-foundation.el

(require-package 'cider)
(require 'cider)

(add-hook 'clojure-mode-hook
	  (lambda ()
	    (rainbow-delimiters-mode) 
	    (paredit-mode)))

(provide 'evply-clojure)
