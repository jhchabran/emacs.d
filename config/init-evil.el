(setq evil-want-C-u-scroll t)
(setq evil-want-C-w-in-emacs-state t)

(setq evil-search-module 'evil-search)
(setq evil-magic 'very-magic)

(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-insert-state-cursor '("orange" bar))

(setq evilnc-hotkey-comment-operator "gc")

(require-package 'evil)
(require-package 'evil-leader)
(require-package 'evil-visualstar)
(require-package 'evil-nerd-commenter)
(require-package 'evil-indent-textobject)
(require-package 'evil-matchit)
(require-package 'surround)
(require-package 'expand-region)

(require 'evil)
(require 'evil-leader)
(require 'evil-nerd-commenter)
(require 'evil-indent-textobject)
(require 'evil-visualstar)
(require 'evil-matchit)
(require 'surround)
(require 'expand-region)

(global-evil-leader-mode)
(evil-mode t)
(global-surround-mode 1)

(evil-leader/set-leader "<SPC>")

(evil-leader/set-key "f" 'projectile-find-file
                     "F" 'projectile-ag
                     "e" 'find-file
                     "w" 'evil-write
                     "<SPC>" 'evil-visual-line
                     "v" 'er/expand-region
                     "," 'evil-emacs-state
                     "q" 'ido-kill-buffer
                     "gs" 'magit-status
                     "gw" 'magit-commit
                     "t" 'visit-ansi-term
                     "l" 'next-buffer
                     "h" 'next-buffer
                     "k" 'switch-to-previous-buffer
                     "j" 'ido-switch-buffer)

(defun switch-to-previous-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;; (define-key evil-normal-state-map (kbd "C-w t") 'elscreen-create)
;; (define-key evil-normal-state-map (kbd "C-w x") 'elscreen-kill)

;; (define-key evil-normal-state-map "gT" 'elscreen-previous)
;; (define-key evil-normal-state-map "gt" 'elscreen-next)

;; Magit
(evil-add-hjkl-bindings magit-branch-manager-mode-map 'emacs
  "K" 'magit-discard-item
  "L" 'magit-key-mode-popup-logging)
(evil-add-hjkl-bindings magit-status-mode-map 'emacs
  "K" 'magit-discard-item
  "l" 'magit-key-mode-popup-logging
  "h" 'magit-toggle-diff-refine-hunk)

(require 'term)
(defun visit-ansi-term ()
    "If the current buffer is:
     1) a running ansi-term named *ansi-term*, rename it.
     2) a stopped ansi-term, kill it and create a new one.
     3) a non ansi-term, go to an already running ansi-term
        or start a new one while killing a defunt one"
    (interactive)
    (let ((is-term (string= "term-mode" major-mode))
          (is-running (term-check-proc (buffer-name)))
          (term-cmd "/bin/zsh")
          (anon-term (get-buffer "*ansi-term*")))
      (if is-term
          (if is-running
              (if (string= "*ansi-term*" (buffer-name))
                  (call-interactively 'rename-buffer)
                (if anon-term
                    (switch-to-buffer "*ansi-term*")
                  (ansi-term term-cmd)))
            (kill-buffer (buffer-name))
            (ansi-term term-cmd))
        (if anon-term
            (if (term-check-proc "*ansi-term*")
                (switch-to-buffer "*ansi-term*")
              (kill-buffer "*ansi-term*")
              (ansi-term term-cmd))
          (ansi-term term-cmd)))))
(global-set-key (kbd "<f2>") 'visit-ansi-term)

(provide 'init-evil)
