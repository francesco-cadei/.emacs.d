;;; init-complete.el --- init-complete -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package yasnippet-snippets)
(use-package yasnippet
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook 'yas-minor-mode))

(use-package company
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (setq company-backends '((company-yasnippet :with company-tempo company-capf company-keywords company-semantic company-files)))
  (setq company-transformers '(company-sort-by-backend-importance))
  (global-company-mode))

(use-package company-math
  :config (add-to-list 'company-backends 'company-math-symbols-unicode))

(provide 'init-complete)
;;; init-complete.el ends here
