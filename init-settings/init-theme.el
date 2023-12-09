;;; init-theme.el --- init-theme -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package doom-themes
  :config (load-theme 'doom-one-light t))

(use-package doom-modeline
  :init (doom-modeline-mode))

(use-package nerd-icons)
;; nerd-icons-install-fonts

(use-package nerd-icons-ibuffer
  :hook (ibuffer-mode . nerd-icons-ibuffer-mode))

(use-package nerd-icons-ivy-rich
  :config (nerd-icons-ivy-rich-mode))

(provide 'init-theme)
;;; init-theme.el ends here
