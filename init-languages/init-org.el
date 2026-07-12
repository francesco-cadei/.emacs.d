;;; init-org.el --- init-org -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'org)
(add-hook 'org-mode-hook 'display-line-numbers-mode)
(add-hook 'org-mode-hook 'visual-line-mode)
(setq org-startup-indented t)
(require 'org-tempo)
(setq org-startup-align-all-tables t
      org-startup-shrink-all-tables t)


(setq org-highlight-latex-and-related '(native))
(setq org-preview-latex-default-process 'dvisvgm)
(setq org-format-latex-options
      (plist-put org-format-latex-options :background "Transparent"))
(setq org-format-latex-options
      (plist-put org-format-latex-options :scale 1.5))
(setq org-startup-with-latex-preview t)

(use-package tex
  :ensure auctex)
(use-package cdlatex
  :hook ((org-mode . org-cdlatex-mode)))


(setq org-src-tab-acts-natively t
      org-confirm-babel-evaluate nil)
(setq org-src-lang-modes '(("bash" . sh)))
(setq org-babel-load-languages '())

(provide 'init-org)
;;; init-org.el ends here
