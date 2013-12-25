;;(require-package 'rbenv)
;;(require 'rbenv)

;; (require-package 'robe)
;; (require-package 'inf-ruby)
;; (require-package 'ruby-electric)

;; (add-hook 'ruby-mode-hook
;;           (lambda ()
;;             (require 'ruby-electric)
;;             (require 'inf-ruby)
;;             (ruby-electric-mode t)
;;             (push 'company-robe company-backends)
;;             (company-mode)
;;             (robe-mode)
;;             ))

(require-package 'enh-ruby-mode)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))

;; Customize colors for Ruby code
(custom-set-faces
 '(enh-ruby-string-delimiter-face ((t (:foreground "red"))))
 '(enh-ruby-op-face ((t (:foreground "red"))))
 '(enh-ruby-regexp-delimiter-face ((t (:foreground "red"))))
 '(erm-syn-warnline ((t (:underline t))))
 '(erm-syn-errline ((t (:background "red" :foreground "white"))))
 '(font-lock-constant-face ((t (:foreground "violet"))))
 )

;; include and extend aren't keywords but I do like having them
;; highlighted as such.
(setq enh-ruby-extra-keywords
  '("include" "extend")
)
(provide 'init-ruby)
