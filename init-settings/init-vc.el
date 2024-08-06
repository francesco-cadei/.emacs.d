;;; init-vc.el --- init-vc -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package magit
  :bind ("C-x m" . magit-status))

(use-package git-timemachine)

(use-package git-link
  :init (setq git-link-open-in-browser t))

(provide 'init-vc)
;;; init-vc.el ends here
