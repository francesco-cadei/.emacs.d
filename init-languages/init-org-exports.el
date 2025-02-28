;;; init-org-exports.el --- init-exports-org -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'org)
(setq org-file-apps '((auto-mode . emacs)
		      (directory . emacs)
		      ("\\.pdf\\'" . "firefox %s")
		      ("\\.html\\'" . "firefox %s")))

(require 'ox-latex)
(setq org-export-with-toc nil
      org-export-with-section-numbers nil)
(setq org-latex-packages-alist '(("" "minted")("" "fullpage"))
      org-latex-listings 'minted
      org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(provide 'init-org-exports)
;;; init-org-exports.el ends here
