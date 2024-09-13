;;; init-complete.el --- init-complete -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package company
  :init
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (setq company-backends '((company-tempo
			    company-capf
			    company-keywords
			    company-semantic
			    company-files)))
  (setq company-transformers '(company-sort-by-backend-importance))
  :config
  (global-company-mode))

(use-package company-math
  :init (add-to-list 'company-backends 'company-math-symbols-unicode))

(provide 'init-complete)
;;; init-complete.el ends here
