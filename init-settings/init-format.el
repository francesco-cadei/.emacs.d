;;; init-format.el --- init-format -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(delete-selection-mode)

(use-package aggressive-indent
  :config (global-aggressive-indent-mode))

(use-package smartparens
  :config
  (require 'smartparens-config)
  :hook
  (org-mode . smartparens-mode)
  (LaTeX-mode . smartparens-mode)
  (prog-mode . smartparens-mode))

(provide 'init-format)
;;; init-format.el ends here
