;;;evply-default.el
;;;configs for emacs build in features
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(set-default-font "Monospace 12")

(column-number-mode t)
(global-hl-line-mode)
(electric-pair-mode t)

(setq make-backup-files nil)
(defalias 'yes-or-no-p 'y-or-n-p)

(require 'ido)
(ido-mode t)

;;maximize on bootstrap
(funcall (lambda ()
		  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
					 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
		  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
					 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))))

(provide 'evply-default)

