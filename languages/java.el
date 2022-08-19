(use-package lsp-java
  :config (setq lsp-java-format-enabled nil)
  :hook (java-mode . lsp))
