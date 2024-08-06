;;; init-format.el --- init-format -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(delete-selection-mode)
(electric-pair-mode)

(use-package aggressive-indent
  :config (global-aggressive-indent-mode))

(provide 'init-format)
;;; init-format.el ends here
