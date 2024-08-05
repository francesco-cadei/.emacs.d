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

(require 'ob-plantuml)
(setq org-plantuml-jar-path (expand-file-name "~/plantuml.jar"))

(setq org-src-tab-acts-natively t)
(setq org-confirm-babel-evaluate nil)
(setq org-src-lang-modes '(("bash" . sh)("plantuml" . plantuml)))
(setq org-babel-load-languages '((plantuml . t)))
(add-hook 'org-babel-after-execute-hook 'org-redisplay-inline-images)

(require 'ox-latex)
(setq org-export-with-toc nil
      org-export-with-section-numbers nil)
(setq org-latex-packages-alist '(("" "minted")("" "fullpage"))
      org-latex-listings 'minted
      org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(use-package org-fragtog
  :hook (org-mode . org-fragtog-mode))

(use-package valign
  :config (setq valign-fancy-bar t)
  :hook (org-mode . valign-mode))

(use-package ox-twbs)

(provide 'init-org)
;;; init-org.el ends here
