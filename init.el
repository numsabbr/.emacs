;;init.el
(fset 'yes-or-no-p 'y-or-n-p)            ;; enable y/n answers to yes/no 
(global-linum-mode t);;line number on the side
;;thanks to http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default (selected-frame) :height 80)
(setq ansi-term-program "/bin/bash")
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(setq url-http-attempt-keepalives nil)


;;automatic make-directory
(defadvice find-file (before make-directory-maybe (filename &optional wildcards) activate)
  "Create parent directory if not exists while visiting file."
  (unless (file-exists-p filename)
    (let ((dir (file-name-directory filename)))
      (unless (file-exists-p dir)
        (make-directory dir)))))



(load-file "~/.emacs.d/mykeyset.el")
(load-file "~/.emacs.d/parenthesis.el")
(load-file "~/.emacs.d/zenkakuspace.el")
(load-file "~/.emacs.d/multilang.el")
(load-file "~/.emacs.d/myfun.el")
(load-file "~/.emacs.d/autoinsert/mytemplate.el")
(load-file "~/.emacs.d/flymakeset.el")
(load-file "~/.emacs.d/hs-hidemode.el")
(load-file "~/.emacs.d/packageset.el")
(load-file "~/.emacs.d/rename.el")
(load-file "~/.emacs.d/python.el")


;;from there it is custom settings by customize emacs
(setq inhibit-startup-message t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "platex")
 '(TeX-default-mode (quote japanese-latex-mode))
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(semantic-mode t)
 '(tex-default-mode (quote japanese-latex-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
