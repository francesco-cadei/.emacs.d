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
  :bind (("C-x M-:" . consult-complex-command)
	 ("C-x b" . consult-buffer)
	 ("C-x 4 b" . consult-buffer-other-window)
	 ("C-x 5 b" . consult-buffer-other-frame)
	 ("C-x r b" . consult-bookmark)
	 ("C-x p b" . consult-project-buffer)
	 ("M-y" . consult-yank-pop)
	 ("C-c g" . consult-ripgrep)
	 ("C-s" . consult-line)
	 ("C-r" . consult-line)
	 :map minibuffer-local-map
	 ("C-s" . vertico-next)
	 ("C-r" . vertico-previous)))

(provide 'init-minibuffer)
;;; init-minibuffer.el ends here
