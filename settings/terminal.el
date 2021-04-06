(defun default-term ()
  "A term with the default shell set."
  (interactive)
  (term "/bin/bash"))

(global-set-key (kbd "C-x C-d") 'default-term)
