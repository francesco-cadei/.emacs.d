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


(setq org-src-tab-acts-natively t)
(setq org-confirm-babel-evaluate nil)
(setq org-src-lang-modes '(("bash" . sh)("latex" . latex)))

(require 'ob-latex)
(setq org-babel-latex-preamble
      (lambda (_) "\\documentclass[tikz,border=2pt]{standalone}\n"))
(setq org-babel-default-header-args:latex
      '((:results . "file graphics")
        (:exports . "results")
        (:headers . ("\\usepackage{amsmath}"))))
(setq org-babel-latex-pdf-svg-process
      "pdftocairo -svg %f %O")

(setq org-babel-load-languages '((latex . t)))

(provide 'init-org)
;;; init-org.el ends here
