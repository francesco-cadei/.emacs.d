;;; init-directory.el --- init-directory -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(put 'dired-find-alternate-file 'disabled nil)
(setq dired-listing-switches "-lhA --group-directories-first -v")
(add-hook 'dired-mode-hook 'dired-hide-details-mode)
(add-hook 'dired-mode-hook 'auto-revert-mode)

(require 'dired-x)
(setq dired-omit-files "^\\..*")
(setq dired-omit-extensions nil)
(add-hook 'dired-mode-hook 'dired-omit-mode)

(use-package sudo-edit
  :config (sudo-edit-indicator-mode))

(use-package diredfl
  :config (diredfl-global-mode))

(provide 'init-directory)
;;; init-directory.el ends here
