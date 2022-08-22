;;; init-c-c++.el --- init-c-c++ -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package irony
  :hook
  (c-mode . irony-mode)
  (c++-mode . irony-mode))
;; M-x irony-install-server

(require 'company)
(use-package company-irony
  :config (add-to-list 'company-backends 'company-irony))

(provide 'init-c-c++)
;;; init-c-c++.el ends here