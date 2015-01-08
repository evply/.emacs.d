(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(set-default-font "Monospace 12")

(column-number-mode t)
(global-hl-line-mode)
(electric-pair-mode t)
(show-paren-mode t)

(setq make-backup-files nil)
(defalias 'yes-or-no-p 'y-or-n-p)

(electric-indent-mode 1)
;;Auto-indent yanked (pasted) code
;; (dolist (command '(yank yank-pop))
;;   (eval `(defadvice ,command (after indent-region activate)
;; 	   (and (not current-prefix-arg)
;; 		(let ((mark-even-if-inactive transient-mark-mode))
;; 		  (indent-region (region-beginning) (region-end) nil))))))

(require 'ido)
(ido-mode t)

;;maximize on bootstrap
(funcall (lambda ()
		  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
					 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
		  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
					 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))))

;; (defun comment-dwim-line (&optional arg)
;;   (interactive "*P")
;;   (comment-normalize-vars)
;;   (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
;;       (comment-or-uncomment-region (line-beginning-position) (line-end-position))
;;     (comment-dwim arg)))

;; (global-set-key "\M-;" 'comment-dwim-line)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'axpiry-default)
