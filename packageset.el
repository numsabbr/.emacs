;;when you install some packages its are only be downluaded: you need to load it by using (require ' )

;;yasnippet
(require 'yasnippet)
;;(yas-global-mode 1)

;;auto-complete
(require 'auto-complete-config)
;;auto-complete-c-headers
 (require 'auto-complete-c-headers)
 (add-to-list 'ac-sources 'ac-source-c-headers)

;;auto-complete-clang
(require 'auto-complete-clang)
(require 'highlight-indentation)

(global-auto-complete-mode t)


(global-ede-mode t)

(define-globalized-minor-mode global-highlight-indentation-mode
  highlight-indentation-mode
  (lambda ()
    (highlight-indentation-mode t)))
(global-highlight-indentation-mode t)



;; ;;ac-c-headers
;; (add-hook 'c-mode-hook
;;             (lambda ()
;;               (add-to-list 'ac-sources 'ac-source-c-headers)
;;               (add-to-list 'ac-sources 'ac-source-c-header-symbols t)))
