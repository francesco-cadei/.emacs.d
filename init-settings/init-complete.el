;;; init-complete.el --- init-complete -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package company
  :config (setq company-idle-delay 0
		company-minimum-prefix-length 1
		company-tooltip-align-annotations t))
(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-complete)
;;; init-complete.el ends here
