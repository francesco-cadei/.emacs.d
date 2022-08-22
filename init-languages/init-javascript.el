;;; init-javascript.el --- init-javascript -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package rjsx-mode
  :mode
  ("\\.js\\'" . rjsx-mode)
  ("\\.ts\\'" . rjsx-mode))

(require 'tide)
(use-package tide
  :config
  (flycheck-define-generic-checker 'rjs-tide
    "A JS syntax checker using tsserver."
    :start #'tide-flycheck-start
    :verify #'tide-flycheck-verify
    :modes '(rjsx-mode)
    :predicate (lambda ()
		 (and
		  (tide-file-extension-p "js")
		  (tide-flycheck-predicate))))

  (add-to-list 'flycheck-checkers 'rjs-tide t)
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
