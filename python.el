

;;for toe flymake-python-pyflakes
;;it is installed py Manage-emacs-package
;;it needs pyflakes.if you don't have it,
;;execute this command: 
;;# pip install pyflakes

(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
;;(setq flymake-python-pyflakes-extra-arguments '("--ignore=W806"))
