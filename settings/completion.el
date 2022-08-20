(use-package company
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (global-company-mode))

(use-package company-math
  :config (add-to-list 'company-backends 'company-math-symbols-unicode))


(use-package yasnippet
  :config (yas-global-mode))

(use-package yasnippet-snippets)
