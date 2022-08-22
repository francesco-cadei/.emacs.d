;;; init-formatting.el --- init-formatting -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(delete-selection-mode)

(use-package smartparens
  :config (require 'smartparens-config)
  :hook
  (prog-mode . smartparens-mode)
  (org-mode . smartparens-mode))

(provide 'init-formatting)
;;; init-formatting.el ends here