;; Remove scrollbars and toolbars
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(menu-bar-mode -1)

;; No blinking cursor
(blink-cursor-mode 0)

;; Show matching parenthesis
(show-paren-mode 1)

;; Powerline, eye candy statusbar
(require-package 'powerline)
(require 'powerline)
(powerline-center-theme)

;; Well I don't remember what this one is
(require-package 'pretty-mode)
(setq pretty-default-groups '(:function))
(require 'pretty-mode)
(global-pretty-mode)

;; Themes
(require-package 'github-theme)
(require-package 'solarized-theme)
(require-package 'twilight-theme)

(load-theme 'twilight t)

;; Font
(set-default-font "Inconsolata 12")

(provide 'init-eyecandy)
