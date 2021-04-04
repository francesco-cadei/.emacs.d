(global-set-key (kbd "C-x C-b") 'ibuffer)

(require 'ibuffer)
(use-package ibuffer-vc
  :hook (ibuffer . (lambda ()
		     (ibuffer-vc-set-filter-groups-by-vc-root)
		     (unless (eq ibuffer-sorting-mode 'major-mode)
		       (ibuffer-do-sort-by-major-mode)))))
