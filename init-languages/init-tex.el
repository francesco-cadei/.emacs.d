;;; init-tex.el --- init-tex -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package tex
  :ensure auctex
  :config
  (setq TeX-view-program-selection '((output-pdf "PDF Tools")))
  (setq TeX-save-query nil)
  (setq TeX-source-correlate-mode t
	TeX-source-correlate-start-server t)
  (add-hook 'TeX-after-compilation-finished-functions 'TeX-revert-document-buffer)
  :hook
  (LaTeX-mode . linum-mode)
  (LaTeX-mode . visual-line-mode)
  (LaTeX-mode . turn-on-reftex))

(use-package pdf-tools
  :config (pdf-loader-install)
  :bind (:map pdf-view-mode-map
	      ("C-s" . 'isearch-forward-regexp)
	      ("C-r" . 'isearch-forward-regexp)))

(provide 'init-tex)
;;; init-tex.el ends here
