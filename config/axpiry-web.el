(require-package 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

(require-package 'js2-mode)

(require-package 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

;;package from melpa
(require-package 'ac-js2)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook 'ac-js2-mode)

(provide 'axpiry-web)