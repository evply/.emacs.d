;;;evply-web.el

(require-package 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

(require-package 'js2-mode)

;;package from melpa
(require-package 'ac-js2)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook 'ac-js2-mode)

(provide 'evply-web)
