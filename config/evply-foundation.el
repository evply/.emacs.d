;;;evply-foundation.el
;;;basic settings would used packages not build in
;;;dependence: evply-package.el

(require-packages '(color-theme
		    color-theme-solarized 
		    auto-complete
		    yasnippet
		    magit
		    smex
		    paredit
		    rainbow-delimiters
		    ))

(require 'color-theme)
(require 'color-theme-solarized)
(color-theme-solarized-dark)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(require 'yasnippet)
(yas-global-mode t)

(global-set-key (kbd "M-x") 'smex)

(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

(provide 'evply-foundation)
