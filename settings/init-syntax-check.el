;;; init-syntax-check.el --- init-syntax-check -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package flycheck
  :config
  ;; (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
  (global-flycheck-mode))

(provide 'init-syntax-check)
;;; init-syntax-check.el ends here
