;;; init-execute.el --- init-execute -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package quickrun
  :config (setq quickrun-focus-p nil)
  :bind ("C-c r" . 'quickrun))

(provide 'init-execute)
;;; init-execute.el ends here
