(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(unless (display-graphic-p) (menu-bar-mode -1))

(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path (concat user-emacs-directory "config"))
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(require 'cl)

(require 'init-packages)
(require 'init-utils)
(require 'init-core)
(require 'init-eyecandy)
(require 'init-ido)
(require 'init-projects)
(require 'init-git)
(require 'init-evil)
(require 'init-coffee)
(require 'init-ruby)
(require 'init-rails)

