;;; init-buffers-management.el --- init-buffers-management -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(global-set-key (kbd "C-x C-b") 'ibuffer)

(require 'ibuffer)
(use-package ibuffer-vc
  :config (setq ibuffer-show-empty-filter-groups nil)
  :hook (ibuffer . (lambda ()
		     (ibuffer-vc-set-filter-groups-by-vc-root)
		     (unless (eq ibuffer-sorting-mode 'major-mode)
		       (ibuffer-do-sort-by-major-mode)))))

(provide 'init-buffers-management)
;;; init-buffers-management.el ends here
