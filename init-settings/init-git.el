;;; init-git.el --- init-git -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package magit
  :bind ("C-x m" . magit-status))

(use-package git-link
  :config (setq git-link-open-in-browser t))

(provide 'init-git)
;;; init-git.el ends here
