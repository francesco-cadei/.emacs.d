(use-package rjsx-mode
  :mode ("\\.js\\'" . rjsx-mode))

(use-package tide
  :config
  (defun setup-tide-mode ()
    "Setup function for tide."
    (interactive)
    (tide-setup)
    (tide-hl-identifier-mode))
  :hook (rjsx-mode . setup-tide-mode))


(use-package web-mode
  :mode
  ("\\.sgml\\'" . web-mode)
  ("\\.html\\'" . web-mode)
  ("\\.htm\\'" . web-mode)
  :hook (web-mode . tide-setup)
  )

(use-package emmet-mode
  :hook
  (web-mode . emmet-mode)
  (rjsx-mode . emmet-mode)
  (css-mode . emmet-mode))


(use-package json-mode)
