

;;(load-file "~/.emacs.d/autoinsert/autoinsert.el")
(load "autoinsert")
(add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-directory "~/.emacs.d/autoinsert/")
(setq auto-insert-alist
      (append '(
                ("\\.tex$" . "template.tex")
                ("\\.cpp$" . "template.cpp")
		("\\.py$" . "template.py")
                ("makefile" . "template.makefile")

                ) auto-insert-alist))
