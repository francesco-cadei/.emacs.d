;;; init-c.el --- init-c -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package irony
  :hook (c-mode . irony-mode))
;; M-x irony-install-server

(require 'company)
(use-package company-irony
  :init (add-to-list 'company-backends 'company-irony))

(provide 'init-c)
;;; init-c.el ends here
