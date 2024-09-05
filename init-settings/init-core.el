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
  (setq use-package-always-ensure t))


(setq make-backup-files nil)
(setq delete-by-moving-to-trash t)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq kill-buffer-query-functions nil)
(setq confirm-kill-processes nil)

(global-set-key (kbd "C-x k") 'kill-this-buffer)
(setq browse-url-browser-function 'browse-url-firefox)

(add-hook 'prog-mode-hook 'linum-mode)
(setq column-number-mode t)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))
(global-auto-revert-mode)

(recentf-mode)

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

(use-package vterm
  :bind ("C-x C-d" . 'vterm))

(use-package neotree
  :init (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  :config (neotree-show))


(load-theme 'modus-operandi t)

(use-package doom-modeline
  :config (doom-modeline-mode))

(use-package all-the-icons
  :if (display-graphic-p))
;; M-x all-the-icons-install-fonts

(provide 'init-core)
;;; init-core.el ends here
