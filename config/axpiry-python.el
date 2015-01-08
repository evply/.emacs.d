(require-packages '(python-mode
		    jedi))

(require 'python-mode)

(add-hook 'python-mode-hook 'jedi:setup)


(provide 'axpiry-python)
