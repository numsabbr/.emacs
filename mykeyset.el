
(global-set-key "\C-z" 'undo)
(global-set-key [C-/] 'iconify-or-deiconify-frame)
(global-unset-key (kbd "C-x C-b") )
(global-set-key (kbd "C-x C-b") 'ibuffer)
;;(global-set-key  "\C-x \C-b" 'ibuffer)
(global-set-key [C-muhenkan] 'next-multiframe-window)
(global-set-key [C-S-muhenkan] 'previous-multiframe-window)
(global-set-key (kbd "C-x <C-down>") 'next-multiframe-window)
(global-set-key (kbd "C-x <down>") 'next-multiframe-window)
(global-set-key (kbd "C-x <C-up>") 'previous-multiframe-window)
(global-set-key (kbd "C-x <up>") 'previous-multiframe-window)


(global-set-key [muhenkan] 'vi-mode )
(global-set-key [henkan] 'vi-mode )

(global-unset-key "\C-q")
(global-set-key (kbd "C-`") 'quoted-insert)
;; (global-set-key "\C-q \C-t" '(ansi-term "/bin/bash" ) )
;; (global-set-key "\C-q \C-c"  'compile) 
;; (global-set-key "\C-q \C-d"  'gdb) 
;; (global-set-key "\C-q \C-r"  'replace-string) 
;;horororo dddd
(global-set-key (kbd "C-q C-c") 'compile)
(global-set-key (kbd "C-q C-d") 'gdb)
(global-set-key (kbd "C-q C-r") 'replace-string)
(global-set-key (kbd "C-q <C-right>") 'hs-show-block)
(global-set-key (kbd "C-q <C-left>")  'hs-hide-block)
(global-set-key (kbd "C-q <C-up>")    'hs-hide-all)
(global-set-key (kbd "C-q <C-down>")  'hs-show-all)


;; (global-set-key "\M-s" 'next-line)
;; (global-set-key "\M-w" 'previous-line)
;; (global-set-key "\M-d" 'forward-char)
;; (global-set-key "\M-a" 'backward-char)
;; (global-set-key "\M-e" 'move-end-of-line)
;; (global-set-key "\M-q" 'move-beginning-of-line)
;; (global-set-key "\M-f" 'scroll-up-command)
;; (global-set-key "\M-r" 'scroll-down-command)
;; (global-set-key "\M-n" 'move-to-window-line-top-bottom)
