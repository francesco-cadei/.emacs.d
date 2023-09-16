;;; init-hs.el --- init-hs -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package haskell-mode
  :config (setq haskell-process-show-debug-tips nil)
  :hook (haskell-mode . interactive-haskell-mode))

(provide 'init-hs)
;;; init-hs.el ends here
