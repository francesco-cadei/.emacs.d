;;; init-syntax-check.el --- init-syntax-check -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'ispell)
(setq ispell-program-name "hunspell")
(setq ispell-dictionary "en_US,it_IT")
(ispell-set-spellchecker-params)
(ispell-hunspell-add-multi-dic "en_US,it_IT")

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'flyspell-mode-hook 'flyspell-buffer)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(add-hook 'flyspell-prog-mode-hook
	  (lambda () (run-with-idle-timer 0 nil 'flyspell-buffer)))

(use-package flycheck
  :config
  (setq flycheck-emacs-lisp-load-path 'inherit)
  (global-flycheck-mode))

(provide 'init-syntax-check)
;;; init-syntax-check.el ends here
