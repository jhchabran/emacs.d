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

;; Basic powerline with Evil state and minus useless minor mode listing
(defun jh/powerline-minimalist-theme ()
  (interactive)
  (setq-default mode-line-format
                '("%e"
                  (:eval
                   (let* ((active (powerline-selected-window-active))
                          (mode-line (if active 'mode-line 'mode-line-inactive))
                          (face1 (if active 'powerline-active1 'powerline-inactive1))
                          (face2 (if active 'powerline-active2 'powerline-inactive2))
                          (separator-left (intern (format "powerline-%s-%s"
                                                          powerline-default-separator
                                                          (car powerline-default-separator-dir))))
                          (separator-right (intern (format "powerline-%s-%s"
                                                           powerline-default-separator
                                                           (cdr powerline-default-separator-dir))))
                          (lhs (list (powerline-raw "%*" nil 'l)
                                     ;;(powerline-buffer-size nil 'l)
                                     (powerline-buffer-id nil 'l)
                                     (powerline-raw " ")
                                     (powerline-raw evil-mode-line-tag face1 'l)
                                     (funcall separator-left mode-line face1)
                                     (powerline-major-mode face1 'l)
                                     (powerline-process face1)
                                     ;;(powerline-minor-modes face1 'l)
                                     ;;(powerline-narrow face1 'l)
                                     (powerline-raw " " face1)
                                     ;;(funcall separator-left face1 face2)
                                     (powerline-vc face2 'r)))
                          (rhs (list (powerline-raw global-mode-string face2 'r)
                                     (funcall separator-right face2 face1)
                                     (when (boundp 'erc-modified-channels-object)
                                       (powerline-raw erc-modified-channels-object face1 'l))
                                     (powerline-raw "%4l" face1 'l)
                                     (powerline-raw ":" face1 'l)
                                     (powerline-raw "%3c" face1 'r)
                                     ;;(funcall separator-right face1 mode-line)
                                     (powerline-raw " ")
                                     (powerline-raw "%6p" nil 'r)
                                     (powerline-hud face2 face1))))
                     (concat (powerline-render lhs)
                             (powerline-fill face2 (powerline-width rhs))
                                                          (powerline-render rhs)))))))

;; Use a less contrasted style
(set-face-attribute 'mode-line nil
                    :foreground "cyan"
                    :background "black"
                    :inverse-video nil
                    :box nil)

;; Kind of hide all inactive mode lines.
(set-face-attribute 'mode-line-inactive nil
                    :inverse-video nil
                    :foreground "black"
                    :background "black"
                    :box nil)
(jh/powerline-minimalist-theme)

;; Get rid of the ugly vertical separator
(set-face-background 'vertical-border "black")
(set-face-foreground 'vertical-border "black")


;; Display symbols where it can, like "lambda" being replaced by λ in lisp modes
(require-package 'pretty-mode)
(setq pretty-default-groups '(:function))
(require 'pretty-mode)
(global-pretty-mode)

;; Themes
(require-package 'color-theme-solarized)
(load-theme 'solarized-dark t)

;; Adjust colors (see list-colors-display)
(custom-set-faces
 '(font-lock-comment-delimiter-face ((t (:foreground "brightgreen"))))
 '(font-lock-comment-face ((t (:foreground "brightgreen"))))
 '(font-lock-keyword-face ((t (:foreground "brightred"))))
 '(font-lock-type-face ((t (:foreground "yellow"))))
 )
(provide 'init-eyecandy)

