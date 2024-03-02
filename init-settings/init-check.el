;;; init-check.el --- init-check -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'ispell)
(setq ispell-program-name "hunspell")
(setq ispell-dictionary "en_US,it_IT")
(ispell-set-spellchecker-params)
(ispell-hunspell-add-multi-dic "en_US,it_IT")
(add-hook 'text-mode-hook 'flyspell-mode)

(use-package flycheck
  :config
  (setq flycheck-emacs-lisp-load-path 'inherit)
  (global-flycheck-mode))

(provide 'init-check)
;;; init-check.el ends here
