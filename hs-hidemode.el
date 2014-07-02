
(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)
(add-hook 'nxml-mode-hook       'hs-minor-mode)
;;keysetting is written on the mykeyset.el


;;for the nxml mode
(eval-after-load "hideshow.el"
(let ((nxml-mode-hs-info '(nxml-mode ("^\\s-*\\(<[^/].*>\\)\\s-*$" 1) "^\\s-*</.*>\\s-*$")))
(when (not (member nxml-mode-hs-info hs-special-modes-alist))
(setq hs-special-modes-alist
(cons nxml-mode-hs-info hs-special-modes-alist)))))
