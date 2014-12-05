;;;evply-default.el
;;;configs for emacs build in features
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
(dolist (command '(yank yank-pop))
  (eval `(defadvice ,command (after indent-region activate)
	   (and (not current-prefix-arg)
		(let ((mark-even-if-inactive transient-mark-mode))
		  (indent-region (region-beginning) (region-end) nil))))))

(require 'ido)
(ido-mode t)

;;maximize on bootstrap
(funcall (lambda ()
		  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
					 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
		  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
					 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))))


;;desktop
(desktop-save-mode 1)
(setq history-length 250)
(setq desktop-buffers-not-to-save
      (concat "\\("
	      "^nn\\.a[0-9]+\\|\\.log\\|(ftp)\\|^tags\\|^TAGS"
	      "\\|\\.emacs.*\\|\\.diary\\|\\.newsrc-dribble\\|\\.bbdb"
	      "\\)$"))
(add-to-list 'desktop-modes-not-to-save 'dired-mode)
(add-to-list 'desktop-modes-not-to-save 'Info-mode)
(add-to-list 'desktop-modes-not-to-save 'info-lookup-mode)
(add-to-list 'desktop-modes-not-to-save 'fundamental-mode)

(provide 'evply-default)

