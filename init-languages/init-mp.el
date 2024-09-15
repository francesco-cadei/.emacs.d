;;; init-mp.el --- init-mp -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package eglot)
(add-hook 'python-mode-hook 'eglot-ensure)

(provide 'init-mp)
;;; init-mp.el ends here
