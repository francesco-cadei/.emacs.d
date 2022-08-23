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
    (tide-hl-identifier-mode))
  :hook (rjsx-mode . setup-tide-mode))

(require 'tide)
(require 'flycheck)
(flycheck-define-generic-checker 'js-tide
  "A JS syntax checker using tsserver."
  :start 'tide-flycheck-start
  :verify 'tide-flycheck-verify
  :modes '(rjsx-mode)
  :predicate (lambda ()
	       (and
		(tide-file-extension-p "js")
		(tide-flycheck-predicate))))
(add-to-list 'flycheck-checkers 'js-tide t)

(flycheck-define-generic-checker 'ts-tide
  "A TS syntax checker using tsserver."
  :start 'tide-flycheck-start
  :verify 'tide-flycheck-verify
  :modes '(rjsx-mode)
  :predicate (lambda ()
	       (and
		(tide-file-extension-p "ts")
		(tide-flycheck-predicate))))
(add-to-list 'flycheck-checkers 'ts-tide t)

(use-package web-mode
  :mode
  ("\\.sgml\\'" . web-mode)
  ("\\.html\\'" . web-mode)
  :hook (web-mode . setup-tide-mode))

(use-package json-mode)

(provide 'init-javascript)
;;; init-javascript.el ends here
