;;; init-complete.el --- init-complete -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package company
  :init (setq company-idle-delay 0
	      company-minimum-prefix-length 1
	      company-tooltip-align-annotations t)
  :config (global-company-mode))

(use-package company-math
  :init (add-to-list 'company-backends 'company-math-symbols-unicode))

(provide 'init-complete)
;;; init-complete.el ends here
