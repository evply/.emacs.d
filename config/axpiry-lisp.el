(require-packages '(paredit
		    rainbow-delimiters))

;;lisps settings
(defun lisp-mode-settings ()
  (rainbow-delimiters-mode)
  (paredit-mode))

(defun lisp-modes ()
  '(emacs-lisp-mode-hook
    clojure-mode-hook))

(dolist (lisp-mode (lisp-modes))
  (add-hook lisp-mode 'lisp-mode-settings))

(provide 'axpiry-lisp)
