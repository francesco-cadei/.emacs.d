;;; init-check.el --- init-check -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'ispell)
(setq ispell-program-name "hunspell")

(use-package flycheck
  :custom
  (flycheck-emacs-lisp-load-path 'inherit)
  (flycheck-global-modes '(not lisp-interaction-mode))
  :init (global-flycheck-mode))

(provide 'init-check)
;;; init-check.el ends here
