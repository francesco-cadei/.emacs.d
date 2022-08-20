(add-hook 'LaTeX-mode-hook 'linum-mode)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)

(use-package tex
  :ensure auctex
  :config
  (setq TeX-view-program-selection '((output-pdf "PDF Tools")))
  (setq TeX-save-query nil)
  (setq TeX-source-correlate-mode t
	TeX-source-correlate-start-server t)
  (add-hook 'TeX-after-compilation-finished-functions 'TeX-revert-document-buffer))

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

(use-package pdf-tools
  :config (pdf-tools-install)
  :bind (:map pdf-view-mode-map
	      ("C-s" . 'isearch-forward-regexp)
	      ("C-r" . 'isearch-forward-regexp)))
