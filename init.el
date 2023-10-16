;;; init.el --- init -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "init-settings" user-emacs-directory))

(require 'init-core)

(require 'init-buffer-manager)
(require 'init-minibuffer)
(require 'init-folders)

(require 'init-format)
(require 'init-completions)
(require 'init-spell-syntax-check)

(require 'init-vc)
(require 'init-execute)

(add-to-list 'load-path (expand-file-name "init-languages" user-emacs-directory))

(require 'init-org)
(require 'init-md)
(require 'init-tex)

(require 'init-c)
(require 'init-java)
(require 'init-js)

(require 'init-hs)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(kill-buffer "*scratch*")
;; Files dependent.
(dired "~/sync-cloned/uni/now/")
(dired "~/sync-cloned/notebooks/")

(provide 'init)
;;; init.el ends here
