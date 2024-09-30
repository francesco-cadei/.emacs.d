;;; init-mp.el --- init-mp -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package json-mode)
(use-package typescript-mode)

(use-package eglot)
(add-hook 'python-mode-hook 'eglot-ensure)
(add-hook 'typescript-mode-hook 'eglot-ensure)

(provide 'init-mp)
;;; init-mp.el ends here
