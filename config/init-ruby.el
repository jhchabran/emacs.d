(require-package 'rbenv)
(require 'rbenv)

(require-package 'robe)
(require-package 'inf-ruby)
(require-package 'ruby-electric)

;; ruby-insert-end is missing, so let's re-add it
(defun ruby-insert-end ()
  "Insert \"end\" at point and reindent current line."
  (interactive)
  (insert "end")
  (ruby-indent-line t)
    (end-of-line))


(add-hook 'ruby-mode-hook
          (lambda ()
            (require 'ruby-electric)
            (require 'inf-ruby)
            (ruby-electric-mode t)
            (push 'company-robe company-backends)
            (company-mode)
            (robe-mode)
            ))

(provide 'init-ruby)
