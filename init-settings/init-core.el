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

(require 'use-package)
(require 'use-package-ensure)
(setq use-package-always-defer t)
(setq use-package-always-ensure t)


(require 'whitespace)
(setq whitespace-display-mappings
      '((newline-mark 10 [36 10])
	(tab-mark 9 [187 9] [92 9])))
(delete 'spaces whitespace-style)
(delete 'lines whitespace-style)
(delete 'empty whitespace-style)
(global-whitespace-mode)

(setq make-backup-files nil)
(setq delete-by-moving-to-trash t)
(setq use-short-answers t)
(setq kill-buffer-query-functions nil)
(setq confirm-kill-processes nil)
(recentf-mode -1)
(recentf-mode)

(setq browse-url-browser-function 'browse-url-firefox)
(setq initial-scratch-message ";; -*- lexical-binding: t; -*-\n\n")
(global-set-key (kbd "C-x k") 'kill-current-buffer)

(setq display-line-numbers-width-start t)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'prog-mode-hook 'column-number-mode)
(global-auto-revert-mode)


(setq scroll-conservatively 101
      auto-window-vscroll nil)
(require 'pixel-scroll)
(setq pixel-scroll-precision-interpolate-mice nil)
(setq pixel-scroll-precision-use-momentum t)
(pixel-scroll-precision-mode)


(load-theme 'modus-operandi t)

(use-package nerd-icons)
;; nerd-icons-install-fonts

(use-package doom-modeline
  :init (doom-modeline-mode))


(use-package vterm
  :bind ("C-x C-d" . vterm-other-window))

(provide 'init-core)
;;; init-core.el ends here
