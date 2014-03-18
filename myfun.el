;;; make-terms.el --- it contains function "make-termss"
;;make-termss make the small shell window at the right top of the screen..
;; Copyright (C) 2013  suhan

;; Author: suhan <suhan@suhan-work>
(defun reload-dotemacs ()  
  "Reload .emacs"
  (interactive)
  (load-file "~/.emacs.d/init.el"))
(global-set-key (kbd "C-<f5>") 'reload-dotemacs)
(defun make-termss ()
  (interactive )  
  (message "maketerm")
  (split-window-horizontally) 
  (enlarge-window-horizontally 30)
  (next-multiframe-window)
  (split-window-vertically)
  (ansi-term "/bin/bash" )
  (interactive)  
  (next-multiframe-window)
  (next-multiframe-window)
  ;; (set-window-buffer (next-window) (other-buffer)        )
   
  )
(global-set-key (kbd "C-x C-7") 'make-termss)
(defun programming-contest-mode2 (asdf)    
   (interactive "Ffind source file")
   (message "procony")
   (find-file asdf) 
   (make-termss )
   (previous-multiframe-window)
     (let (( a (length asdf) ))
     (setq a (- a 1))
      (while (/= (aref asdf a)  ?.)
        (setq a (- a 1))
       )
     (setq asdf (substring asdf 0 a))
     )
 (setq asdf (concat asdf ".in")) ;=> "abc-def"
   (find-file asdf)   
   (next-multiframe-window)
)
(global-set-key "\C-x7" 'programming-contest-mode2)

(provide 'make-terms)
;;; make-terms.el ends here
