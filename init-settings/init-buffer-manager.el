;;; init-buffer-manager.el --- init-buffer-manager -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'ibuffer)
(use-package ibuffer-vc
  :config (setq ibuffer-show-empty-filter-groups nil)
  :hook (ibuffer . (lambda ()
		     (ibuffer-vc-set-filter-groups-by-vc-root)
		     (unless (eq ibuffer-sorting-mode 'major-mode)
		       (ibuffer-do-sort-by-major-mode)))))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'init-buffer-manager)
;;; init-buffer-manager.el ends here
