(put 'dired-find-alternate-file 'disabled nil)

(setq dired-listing-switches "-lhA --group-directories-first")
(add-hook 'dired-mode-hook 'dired-hide-details-mode)

(defun dired-extern ()
  "In dired, open externally the file mentioned on this line."
  (interactive)
  (call-process "xdg-open" nil 0 nil (dired-get-filename t nil)))

(require 'dired)
(define-key dired-mode-map (kbd "e") 'dired-extern)
