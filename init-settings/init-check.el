;;; init-check.el --- init-check -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'ispell)
(setq ispell-program-name "hunspell")

(use-package flycheck
  :init
  (setq flycheck-emacs-lisp-load-path 'inherit)
  (global-flycheck-mode))

(provide 'init-check)
;;; init-check.el ends here
