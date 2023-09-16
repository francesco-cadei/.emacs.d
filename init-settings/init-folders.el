;;; init-folders.el --- init-folders -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(put 'dired-find-alternate-file 'disabled nil)

(setq dired-listing-switches "-lhA --group-directories-first -v")
(add-hook 'dired-mode-hook 'dired-hide-details-mode)

(defun dired-extern ()
  "In Dired, open externally the file mentioned on this line."
  (interactive)
  (call-process "xdg-open" nil 0 nil (dired-get-filename t nil)))

(require 'dired)
(define-key dired-mode-map (kbd "e") 'dired-extern)

(provide 'init-folders)
;;; init-folders.el ends here
