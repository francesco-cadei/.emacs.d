;;; init-vc.el --- init-vc -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package git-timemachine)

(use-package magit
  :bind ("C-x m" . magit-status))

(provide 'init-vc)
;;; init-vc.el ends here
