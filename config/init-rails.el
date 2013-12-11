(require-package 'rinari)
(require-package 'rhtml-mode)
(require-package 'haml-mode)

(require 'rinari)

(add-hook 'ruby-mode-hook
          (lambda ()
            (rinari-launch)))

(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
          (lambda () (rinari-launch)))

(require 'haml-mode)
(add-hook 'haml-mode-hook
          (lambda ()
            (set (make-local-variable 'tab-width) 2)
            (rinari-launch)))
(add-hook 'coffee-mode-hook
          (lambda ()
            (rinari-launch)))

(dolist (pattern '("\\.rb$" "Rakefile$" "\.rake$" "\.rxml$" "\.rjs$" ".irbrc$" "\.builder$" "\.ru$" "\.gemspec$" "Gemfile$"))
  (add-to-list 'auto-mode-alist (cons pattern 'ruby-mode)))


(evil-ex-define-cmd "Rfile"       'rinari-find-file-in-project)
(evil-ex-define-cmd "Rcontroller" 'rinari-find-controller)
(evil-ex-define-cmd "Rmodel"      'rinari-find-model)
(evil-ex-define-cmd "Rview"       'rinari-find-view)
(evil-ex-define-cmd "Rspec"       'rinari-find-rspec)
(evil-ex-define-cmd "Rhelper"     'rinari-find-helper)
(evil-ex-define-cmd "Rmailer"     'rinari-find-mailer)
(evil-ex-define-cmd "Rmigration"  'rinari-find-migration)
(evil-ex-define-cmd "Rstylesheet" 'rinari-find-stylesheet)
(evil-ex-define-cmd "Rsass"       'rinari-find-sass)
(evil-ex-define-cmd "Rjavascript" 'rinari-find-javascript)

(provide 'init-rails)
