;;; init-syntax-check.el --- init-syntax-check -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package flycheck
  :config
  (setq flycheck-emacs-lisp-load-path 'inherit)
  (global-flycheck-mode))

(provide 'init-syntax-check)
;;; init-syntax-check.el ends here
