;;; init-theme.el --- init-theme -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t)
  (setq doom-themes-enable-italic t)
  (load-theme 'doom-one-light t)

  (doom-themes-visual-bell-config)
  (doom-themes-org-config))

(provide 'init-theme)
;;; init-theme.el ends here
