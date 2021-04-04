(require 'org)
(setq org-startup-indented t)
(setq org-startup-folded nil)
(add-hook 'org-mode-hook 'visual-line-mode)

(setq org-pretty-entities t)

(setq org-confirm-babel-evaluate nil)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)))

(use-package org-bullets
  :hook (org-mode . org-bullets-mode))
