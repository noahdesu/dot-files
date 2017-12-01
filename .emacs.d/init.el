(require 'package)
(setq package-archives '(("org" . "http://orgmode.org/elpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))
(package-initialize)
(package-refresh-contents)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(frame-background-mode (quote dark))
 '(package-selected-packages
   (quote
    (markdown-mode monokai-alt-theme solarized-emacs color-theme-solarized color-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(menu-bar-mode -1)
(global-linum-mode t)
(setq linum-format "%d ")

(use-package org
  :ensure t
  :bind (("C-c c" . org-capture)
	 ("C-c C-w" . org-capture-refile)))

(setq org-default-notes-file "~/src/org/notes.org")

(setq org-capture-templates
      '(("n" "thought" entry
	 (file org-default-notes-file)
	 "* %?\n\n  %i\n\n" :empty-lines 1)
	("z" "news" entry (file+datetree "~/src/org/news.org") "* %?")
	("m" "Meeting" entry (file org-default-notes-file)
	 "* Meeting %? :meeting:\n%t" :empty-lines 1)))

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

(add-to-list 'load-path "~/.emacs.d/promela-mode")
(require 'promela-mode)
(add-to-list 'auto-mode-alist '("\\.pml\\'" . promela-mode))

(setq org-refile-targets '((nil :maxlevel . 9)
                                (org-agenda-files :maxlevel . 9)))
(setq org-outline-path-complete-in-steps nil)         ; Refile in a single go
(setq org-refile-use-outline-path 'file)                  ; Show full paths for refiling
(setq org-refile-allow-creating-parent-nodes 'confirm)

(setq-default fill-column 80)

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
	 ("\\.md\\'" . markdown-mode)
	 ("\\.markdown\\'" . markdown-mode)))
