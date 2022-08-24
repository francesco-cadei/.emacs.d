;;; init-terminal.el --- init-terminal -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun default-term ()
  "A term with the default shell set."
  (interactive)
  (ansi-term "/bin/bash"))

(global-set-key (kbd "C-x C-d") 'default-term)

(provide 'init-terminal)
;;; init-terminal.el ends here
