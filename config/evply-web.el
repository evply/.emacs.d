;;;evply-web.el

(require-package 'web-mode)
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

(provide 'evply-web)
