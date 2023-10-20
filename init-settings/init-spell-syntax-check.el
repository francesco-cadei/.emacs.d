;;; init-spell-syntax-check.el --- init-spell-syntax-check -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'ispell)
(setq ispell-program-name "hunspell")
(setq ispell-dictionary "en_US,it_IT")
(ispell-set-spellchecker-params)
(ispell-hunspell-add-multi-dic "en_US,it_IT")

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)


(use-package flycheck
  :config
  (setq flycheck-emacs-lisp-load-path 'inherit)
  (add-to-list 'display-buffer-alist
	       `(,(rx bos "*Flycheck errors*" eos)
		 (display-buffer-reuse-window
		  display-buffer-in-side-window)
		 (side            . bottom)
		 (reusable-frames . visible)
		 (window-height   . 0.25)))
  (global-flycheck-mode))

(provide 'init-spell-syntax-check)
;;; init-spell-syntax-check.el ends here
