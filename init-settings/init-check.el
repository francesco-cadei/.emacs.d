;;; init-check.el --- init-check -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'ispell)
(setq ispell-program-name "hunspell")

(use-package flycheck
  :init
  (setq flycheck-emacs-lisp-load-path 'inherit)
  (setq flycheck-global-modes '(not lisp-interaction-mode))
  (global-flycheck-mode))

(provide 'init-check)
;;; init-check.el ends here
