(require-package 'projectile)
(require 'projectile)

(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
(projectile-global-mode)

(require-package 'perspective)
(require 'perspective)
(persp-mode)

;; Interesting: create a named perspective and exec some code
;; http://emacsrookie.com/2011/09/25/workspaces/

(require-package 'company)
(require 'company)

;; Doesn't seem to work well
(add-hook 'projectile-switch-project-hook 'company-mode)

(provide 'init-projects)
