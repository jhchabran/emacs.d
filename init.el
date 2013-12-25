
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path (concat user-emacs-directory "config"))
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(require 'cl)

(require 'init-packages)
(require 'init-utils)
(require 'init-core)
(require 'init-ido)
(require 'init-elisp)
(require 'init-projects)
(require 'init-git)
(require 'init-evil)
(require 'init-coffee)
(require 'init-ruby)
(require 'init-rails)
(require 'init-eyecandy)

