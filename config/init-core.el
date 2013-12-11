(setq inhibit-splash-screen t
            inhibit-startup-echo-area-message t
                  inhibit-startup-message t)

(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
    (load custom-file))

(require 'saveplace)
(setq save-place-file (concat user-emacs-directory ".cache/places"))
(setq-default save-place t)

(require 'savehist)
(setq savehist-file (concat user-emacs-directory ".cache/savehist")
            savehist-additional-variables '(search ring regexp-search-ring)
                  savehist-autosave-interval 60)
(savehist-mode +1)

(require 'recentf)
(setq recentf-save-file (concat user-emacs-directory ".cache/recentf")
            recentf-max-saved-items 1000
                  recentf-max-menu-items 500)
(recentf-mode +1)

(setq eshell-directory-name (concat user-emacs-directory ".cache/eshell"))
(setq eshell-aliases-file (concat user-emacs-directory ".eshell-aliases"))
(setq eshell-scroll-to-bottom-on-input 'all)
(setq eshell-glob-case-insensitive t)
(setq eshell-buffer-shorthand t)
(setq eshell-error-if-no-glob t)
(setq eshell-send-direct-to-subprocesses t)

(setq backup-directory-alist
            `((".*" . ,(concat user-emacs-directory ".cache/backups")))
                  auto-save-file-name-transforms
                        `((".*" ,(concat user-emacs-directory ".cache/backups") t))
                              auto-save-list-file-prefix
                                    (concat user-emacs-directory ".cache/auto-save-list/.saves-"))


(defalias 'yes-or-no-p 'y-or-n-p)


(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq visible-bell t)

(electric-indent-mode t)

(setq-default
   indent-tabs-mode nil)


(add-hook 'find-file-hook (lambda ()
                            (visual-line-mode)
                            (setq show-trailing-whitespace t)))

(random t)

(provide 'init-core)
