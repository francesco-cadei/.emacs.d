;;; init-folders.el --- init-folders -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(put 'dired-find-alternate-file 'disabled nil)
(setq dired-listing-switches "-lhA --group-directories-first -v")
(add-hook 'dired-mode-hook 'dired-hide-details-mode)
(add-hook 'dired-mode-hook 'auto-revert-mode)

(use-package sudo-edit
  :config (sudo-edit-indicator-mode))

(require 'dired-x)
(setq dired-omit-files "^\\..*")
(setq dired-omit-extensions nil)
(add-hook 'dired-mode-hook (lambda () (dired-omit-mode)))

(use-package diredfl
  :config (diredfl-global-mode))

(use-package treemacs-icons-dired
  :config (treemacs-icons-dired-mode))

(provide 'init-folders)
;;; init-folders.el ends here
