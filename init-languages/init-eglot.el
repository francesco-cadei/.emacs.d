;;; init-eglot.el --- init-eglot -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package eglot
  :config (setq eglot-autoshutdown t)
  :hook
  (java-mode . eglot-ensure)
  (js-mode . eglot-ensure)
  ;; npm install -g typescript-language-server typescript
  )

(use-package eglot-java
  :hook (java-mode . eglot-java-mode))
;; M-x eglot-java-upgrade-junit-jar
;; M-x eglot-java-upgrade-lsp-server

(provide 'init-eglot)
;;; init-eglot.el ends here
