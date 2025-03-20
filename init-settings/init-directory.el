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
(setq dired-guess-shell-alist-user '(("\\.pdf\\'" "firefox")
				     ("\\.mp4\\'" "mpv")
				     ("\\.mkv\\'" "mpv")))

(use-package sudo-edit
  :init (sudo-edit-indicator-mode))

(use-package diredfl
  :init (diredfl-global-mode))

(use-package dired-rsync
  :bind (:map dired-mode-map
              ("C-c C-r" . dired-rsync)))

(use-package trashed)

(provide 'init-directory)
;;; init-directory.el ends here
