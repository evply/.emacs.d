(require-packages '(color-theme
		    color-theme-solarized
		    auto-complete
		    yasnippet
		    magit
		    smex
		    electric-spacing
		    nlinum))
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

(add-hook 'prog-mode-hook 'nlinum-mode)

(require 'smart-operator)
(add-hook 'prog-mode-hook 'smart-operator-mode)

(autoload 'eim-use-package "eim" "Another emacs input method")
(setq eim-use-tooltip nil)
(setq default-input-method "eim-py")
(register-input-method
   "eim-py" "euc-cn" 'eim-use-package
   "拼音" "汉字拼音输入法" "~/.emacs.d/site-lisp/eim/py.txt")

(provide 'axpiry-foundation)
