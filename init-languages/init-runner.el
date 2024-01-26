;;; init-runner.el --- init-runner -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package quickrun
  :config (setq quickrun--run-in-shell t)
  :bind ("C-c r" . quickrun))

(provide 'init-runner)
;;; init-runner.el ends here

