;;; init-theme.el --- init-theme -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(load-theme 'modus-operandi t)

(use-package all-the-icons
  :if (display-graphic-p))
;; M-x all-the-icons-install-fonts

(use-package doom-modeline
  :init (doom-modeline-mode))

(provide 'init-theme)
;;; init-theme.el ends here
