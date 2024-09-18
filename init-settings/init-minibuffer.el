;;; init-minibuffer.el --- init-minibuffer -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package vertico
  :init (vertico-mode)
  :bind (:map vertico-map
	      ("DEL" . vertico-directory-delete-char)))

(use-package vertico-prescient
  :init (vertico-prescient-mode))

(use-package marginalia
  :init (marginalia-mode))

(use-package consult
  :bind (("C-x 4 b" . consult-buffer-other-window)
	 ("C-x 5 b" . consult-buffer-other-frame)
	 ("M-y" . consult-yank-pop)
	 ("C-c g" . consult-ripgrep)
	 ("C-c r" . consult-recent-file)
	 ("C-s" . consult-line)
	 ("C-r" . consult-line)
	 :map minibuffer-local-map
	 ("C-s" . vertico-next)
	 ("C-r" . vertico-previous)))

(provide 'init-minibuffer)
;;; init-minibuffer.el ends here
