;;; init-mp.el --- init-mp -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package eglot
  :hook (python-mode . eglot-ensure))

(provide 'init-mp)
;;; init-mp.el ends here
