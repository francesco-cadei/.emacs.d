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

(use-package ox-twbs
  :config
  (add-to-list 'org-export-backends 'twbs)

  (defun org-twbs-export-to-html-open ()
    "Use ox-twbs to export html and open it in browser."
    (interactive)
    (save-buffer)
    (org-twbs-export-to-html)
    (browse-url (concat "file://"
			(file-name-sans-extension buffer-file-name)
			".html")))
  :bind (:map org-mode-map ("C-c e" . org-twbs-export-to-html-open)))
