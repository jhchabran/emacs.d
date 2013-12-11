;; I should move this to init-javascript
(require-package 'js2-mode)
(require-package 'coffee-mode)

(require 'coffee-mode)

(add-hook 'coffee-mode-hook
          (lambda ()
            (set (make-local-variable 'tab-width) 2)))

(provide 'init-coffee)
