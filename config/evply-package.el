;;;evply-package.el
;;;package management

;;elpa
(require 'package)

;;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(defun require-package (package)
  (if (not (package-installed-p package))
      (progn 
	(package-refresh-contents)
	(package-install package))))

(defun require-packages (packages)
  (dolist (p packages)
    (require-package p)))

(package-initialize)

;;not elpa
(let ((default-directory "~/.emacs.d/extern/"))
  (normal-top-level-add-subdirs-to-load-path))

(provide 'evply-package)
