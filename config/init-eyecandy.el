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

;; Use a less contrasted style
(set-face-attribute 'mode-line nil
                    :foreground "cyan"
                    :background "black"
                    :inverse-video nil
                    :box nil)
(set-face-attribute 'mode-line-inactive nil
                    :inverse-video nil
                    :box nil)
(powerline-center-evil-theme)

;; Get rid of the ugly vertical separator
(set-face-background 'vertical-border "black")
(set-face-foreground 'vertical-border "black")

;; Well I don't remember what this one is
(require-package 'pretty-mode)
(setq pretty-default-groups '(:function))
(require 'pretty-mode)
(global-pretty-mode)

;; Themes
(require-package 'github-theme)
(require-package 'solarized-theme)
(require-package 'twilight-theme)

(load-theme 'solarized-dark t)

(provide 'init-eyecandy)
