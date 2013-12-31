(require-package 'cider)
(require 'cider)
;; Possible adjustments https://github.com/clojure-emacs/cider

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(provide 'init-clojure)
