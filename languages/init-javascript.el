;;; init-javascript.el --- init-javascript -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package rjsx-mode
  :mode
  ("\\.js\\'" . rjsx-mode)
  ("\\.ts\\'" . rjsx-mode))

(use-package tide
  :config
  (defun setup-tide-mode ()
    "Setup function for tide."
    (interactive)
    (tide-setup)
    (setq flycheck-check-syntax-automatically '(save mode-enabled))
    (eldoc-mode)
    (tide-hl-identifier-mode))
  :hook (rjsx-mode . setup-tide-mode))

(use-package web-mode
  :mode
  ("\\.sgml\\'" . web-mode)
  ("\\.html\\'" . web-mode)
  :hook (web-mode . tide-setup))

(use-package json-mode)

(provide 'init-javascript)
;;; init-javascript.el ends here
