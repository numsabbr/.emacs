;;; parenthesis.el --- for the parenthesis setting

;; Copyright (C) 2013  suhan

;; Author: suhan <suhan@suhan-work>
;; Keywords: 

(show-paren-mode 1)

(load-file "~/.emacs.d/highlight-parentheses.el")


(load-file "~/.emacs.d/cl-lib-0.3.el")
(load-file "~/.emacs.d/autopair.el")
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

(add-hook 'python-mode-hook
      #'(lambda ()
          (setq autopair-handle-action-fns
            (list #'autopair-default-handle-action
              #'autopair-python-triple-quote-action))))



(require 'highlight-parentheses)
(setq hl-paren-colors '("red" "blue" "yellow" "green" "magenta" "peru" "cyan"))
(set-face-attribute 'hl-paren-face nil :weight 'bold)
;;(add-hook 'emacs-lisp-mode-hook 'highlight-parentheses-mode)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)


