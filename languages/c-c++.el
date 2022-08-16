(use-package irony
  :hook
  (c-mode . irony-mode)
  (c++-mode-hook . irony-mode))
;; M-x irony-install-server

(require 'company)
(use-package company-irony
  :config (add-to-list 'company-backends 'company-irony))
