(require-packages '(color-theme
		    color-theme-solarized 
		    auto-complete
		    yasnippet
		    magit
		    smex))

(require 'color-theme)
(require 'color-theme-solarized)
(color-theme-solarized-dark)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(require 'yasnippet)
(yas-global-mode t)
(setq yas-snippet-dirs "~/.emacs.d/snippets")

(global-set-key (kbd "M-x") 'smex)

(provide 'axpiry-foundation)   
