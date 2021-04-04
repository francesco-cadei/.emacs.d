(global-set-key (kbd "C-x C-d") 'eshell)

(use-package esh-autosuggest
  :hook (eshell-mode . esh-autosuggest-mode))

