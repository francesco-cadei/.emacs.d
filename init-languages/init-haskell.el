;;; init-haskell.el --- init-haskell -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package haskell-mode
  :config (setq haskell-process-show-debug-tips nil)
  :hook (haskell-mode . interactive-haskell-mode))

(provide 'init-haskell)
;;; init-haskell.el ends here
