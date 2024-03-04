;;; init-extra.el --- init-extra -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package json-mode)


(use-package web-mode
  :mode ("\\.html\\'" . web-mode))

(use-package markdown-mode
  :mode ("\\.md\\'" . markdown-mode))

(provide 'init-extra)
;;; init-extra.el ends here
