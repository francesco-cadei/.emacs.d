;;; init-core.el --- init-core -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
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

(defun default-term ()
  "A term with the default shell set."
  (interactive)
  (ansi-term "/bin/bash"))
(global-set-key (kbd "C-x C-d") 'default-term)

(use-package treemacs
  :config (treemacs))
(use-package treemacs-magit)
(kill-buffer "*scratch*")
(other-window 1)

(provide 'init-core)
;;; init-core.el ends here
