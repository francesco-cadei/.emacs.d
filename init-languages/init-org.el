;;; init-org.el --- init-org -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'org)
(require 'org-tempo)
(setq org-startup-indented t
      org-startup-folded nil)
(setq org-startup-shrink-all-tables t
      org-startup-align-all-tables t)
(setq org-startup-with-latex-preview t
      org-startup-with-inline-images t)
(add-hook 'org-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'visual-line-mode)

(setq org-highlight-latex-and-related '(latex))
(setq org-format-latex-options
      (plist-put org-format-latex-options :background "Transparent"))
(setq org-format-latex-options
      (plist-put org-format-latex-options :scale 1.5))

(use-package org-fragtog
  :hook ((org-mode . org-fragtog-mode)))

(use-package valign
  :init (setq valign-fancy-bar t)
  :hook ((org-mode . valign-mode)))

(use-package plantuml-mode)

(require 'ob-plantuml)
(setq org-plantuml-jar-path (expand-file-name "~/plantuml.jar"))

(setq org-src-tab-acts-natively t
      org-confirm-babel-evaluate nil)
(setq org-src-lang-modes '(("bash" . sh)("plantuml" . plantuml)))
(setq org-babel-load-languages '((plantuml . t)))
(add-hook 'org-babel-after-execute-hook 'org-redisplay-inline-images)

(provide 'init-org)
;;; init-org.el ends here
