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
(setq dired-omit-files
      (rx (seq bol "." (not (any ".")))))

(setq dired-guess-shell-alist-user
      (list
       (list "\\.pdf$" "firefox-esr")))

(provide 'init-folders)
;;; init-folders.el ends here
