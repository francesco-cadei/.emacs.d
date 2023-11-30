;;; init-org.el --- init-org -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'org)
(require 'org-tempo)
(setq org-startup-indented t)
(setq org-startup-folded nil)
(setq org-startup-shrink-all-tables t)
(setq org-startup-align-all-tables t)
(setq org-startup-with-latex-preview t)
(setq org-startup-with-inline-images t)
(add-hook 'org-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'visual-line-mode)

(setq org-highlight-latex-and-related '(latex))
(setq org-format-latex-options (plist-put org-format-latex-options :background "Transparent"))
(setq org-format-latex-options (plist-put org-format-latex-options :scale 1.5))

(setq org-src-tab-acts-natively t)
(setq org-confirm-babel-evaluate nil)
(org-babel-do-load-languages
 'org-babel-load-languages nil)

(require 'ox-latex)
(setq org-latex-packages-alist '(("" "minted")("" "fullpage" ))
      org-latex-listings 'minted
      org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(use-package org-bullets
  :hook (org-mode . org-bullets-mode))

(use-package org-fragtog
  :config (add-hook 'org-mode-hook 'org-fragtog-mode))

(use-package valign
  :config
  (setq valign-fancy-bar t)
  (add-hook 'org-mode-hook 'valign-mode))

(provide 'init-org)
;;; init-org.el ends here
