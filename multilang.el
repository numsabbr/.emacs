;;thanks to http://stackoverflow.com/questions/12032231/is-it-possible-to-alternate-two-input-methods-in-emacs
;;it is for the multilanguage toggle:japanese,korean,and english.
;;(require 'mozc)
(load-file "~/.emacs.d/mozc.el")
(setq alternative-input-methods
      '(("korean-hangul" . [?\C-|])
        ("japanese-mozc" . [?\C-\\])
        )) 

(setq default-input-method
      (caar alternative-input-methods))

(defun toggle-alternative-input-method (method &optional arg interactive)
  (if arg
      (toggle-input-method arg interactive)
    (let ((previous-input-method current-input-method))
      (when current-input-method
        (toggle-input-method))
      (unless (and previous-input-method
                   (string= previous-input-method method))
        (activate-input-method method)))))

(defun reload-alternative-input-methods ()
  (dolist (config alternative-input-methods)
    (let ((method (car config)))
      (global-set-key (cdr config)
                      `(lambda (&optional arg interactive)
                         ,(concat "Behaves similar to `toggle-input-method', but uses \""
                                  method "\" instead of `default-input-method'")
                         (interactive "P\np")
                         (toggle-alternative-input-method ,method arg interactive))))))

(reload-alternative-input-methods)




;;dummy over there


;;(set-language-environment "Japanese")
;;(setq default-input-method "japanese-mozc")
;;(global-set-key (kbd "S-SPC") 'toggle-input-method)
;;  (define-key global-map [henkan] 'toggle-input-method)

;;(global-set-key (kbd "<henkan>") 'toggle-input-method)
;;for the global language
