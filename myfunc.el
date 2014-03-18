(defun reload-dotemacs ()  
  "Reload .emacs"
  (interactive)
  (load-file "~/.emacs.d/init.el"))
(global-set-key (kbd "C-<f5>") 'reload-dotemacs)
