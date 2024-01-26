;;; init-buffers.el --- init-buffers -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'ibuffer)
(use-package ibuffer-vc
  :config (setq ibuffer-show-empty-filter-groups nil)
  :hook (ibuffer . (lambda ()
		     (and
		      (ibuffer-vc-set-filter-groups-by-vc-root)
		      (unless (eq ibuffer-sorting-mode 'filename/process)
			(ibuffer-do-sort-by-filename/process))))))
(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'init-buffers)
;;; init-buffers.el ends here
