;;; init-org.el --- init-org -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'org)
(require 'org-tempo)
(setq org-startup-indented t)
(setq org-startup-folded nil)
(add-hook 'org-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'visual-line-mode)

(setq org-src-tab-acts-natively t)
(setq org-pretty-entities t)
(setq org-highlight-latex-and-related '(latex))

(setq org-confirm-babel-evaluate nil)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)))

(use-package org-bullets
  :hook (org-mode . org-bullets-mode))

(provide 'init-org)
;;; init-org.el ends here
