(use-package haskell-mode
  :config
  (setq haskell-process-show-debug-tips nil)
  :hook
  (haskell-mode . interactive-haskell-mode))
