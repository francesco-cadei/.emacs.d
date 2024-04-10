;;; init-core.el --- init-core -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'package)
(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("GNU ELPA"     . 10)
	("MELPA Stable" . 5)
        ("MELPA"        . 0)))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)


(setq inhibit-startup-message t)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq make-backup-files nil)
(setq delete-by-moving-to-trash t)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq kill-buffer-query-functions nil)
(setq confirm-kill-processes nil)

(global-set-key (kbd "C-x k") 'kill-current-buffer)
(setq browse-url-browser-function 'browse-url-firefox)

(add-hook 'prog-mode-hook 'linum-mode)
(setq column-number-mode t)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))
(global-auto-revert-mode)

(require 'whitespace)
(setq whitespace-display-mappings
      '((newline-mark 10 [36 10])
	(tab-mark 9 [187 9] [92 9])))
(delete 'spaces whitespace-style)
(delete 'lines whitespace-style)
(delete 'empty whitespace-style)
(global-whitespace-mode)

(require 'saveplace)
(save-place-mode)

(use-package vterm)
(global-set-key (kbd "C-x C-d") 'vterm)

(use-package treemacs
  :config (treemacs))

(use-package treemacs-magit)

(kill-buffer "*scratch*")
(other-window 1)

(provide 'init-core)
;;; init-core.el ends here
