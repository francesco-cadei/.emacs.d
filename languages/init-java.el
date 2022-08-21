;;; init-java.el --- init-java -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package lsp-java
  :config (setq lsp-java-format-enabled nil)
  :hook (java-mode . lsp))

(provide 'init-java)
;;; init-java.el ends here
