(require-package 'smart-mode-line)
(require 'smart-mode-line)
(setq sml/theme 'dark)
(sml/setup)


(require-package 'pretty-mode)
(setq pretty-default-groups '(:function))
(require 'pretty-mode)
(global-pretty-mode)


(require-package 'twilight-theme)
(load-theme 'twilight t)

(provide 'init-eyecandy)
