(require-package 'rbenv)
(require 'rbenv)

(require-package 'yari)
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
            (require 'yari)
            (require 'ruby-electric)
            (require 'inf-ruby)
            (ruby-electric-mode t)
            (inf-ruby-minor-mode +1)))

(provide 'init-ruby)
