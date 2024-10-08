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

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package)
  (require 'use-package-ensure)
  (setq use-package-always-defer t)
  (setq use-package-always-ensure t))


(setq make-backup-files nil)
(setq delete-by-moving-to-trash t)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq kill-buffer-query-functions nil)
(setq confirm-kill-processes nil)
(recentf-mode -1)
(recentf-mode)

(global-set-key (kbd "C-x k") 'kill-this-buffer)
(setq browse-url-browser-function 'browse-url-firefox)

(add-hook 'prog-mode-hook 'linum-mode)
(setq column-number-mode t)
(setq visual-line-fringe-indicators '(nil right-curly-arrow))
(global-auto-revert-mode)

(require 'whitespace)
(setq whitespace-display-mappings
      '((newline-mark 10 [36 10])
	(tab-mark 9 [187 9] [92 9])))
(delete 'spaces whitespace-style)
(delete 'lines whitespace-style)
(delete 'empty whitespace-style)
(global-whitespace-mode)


(load-theme 'modus-operandi t)

(use-package all-the-icons
  :if (display-graphic-p))

(use-package doom-modeline
  :init (doom-modeline-mode))

(use-package vterm
  :bind (("C-x C-d" . vterm-other-window)))

(provide 'init-core)
;;; init-core.el ends here
