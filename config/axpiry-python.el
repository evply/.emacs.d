(require-packages '(python-mode
		    jedi
		    anaconda-mode))

(require 'python-mode)

(add-hook 'python-mode-hook 'jedi:setup)
;;(add-hook 'python-mode-hook 'anaconda-mode)

(provide 'axpiry-python)
