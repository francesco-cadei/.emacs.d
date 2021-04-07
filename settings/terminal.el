(defun default-term ()
  "A term with the default shell set."
  (interactive)
  (ansi-term "/bin/bash"))

(global-set-key (kbd "C-x C-d") 'default-term)
