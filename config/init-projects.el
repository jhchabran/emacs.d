(require-package 'projectile)
(require-package 'grizzl)
(require-package 'ag)

(require 'grizzl)
(require 'projectile)

(setq projectile-completion-system 'grizzl)
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
(projectile-global-mode)

(require-package 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'enh-ruby-mode)

(provide 'init-projects)
