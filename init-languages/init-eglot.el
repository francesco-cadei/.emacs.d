;;; init-eglot.el --- init-eglot -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package eglot
  :config
  (add-to-list 'eglot-server-programs
	       '(java-mode . ("~/jdt-language-server-1.33.0-202402151717/bin/jdtls")))
  :hook
  (java-mode . eglot-ensure) ;; https://download.eclipse.org/jdtls/milestones/?d
  (js-mode . eglot-ensure) ;; npm install -g typescript-language-server typescript
  )

(provide 'init-eglot)
;;; init-eglot.el ends here
