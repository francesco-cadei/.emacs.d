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
(require 'init-tex)
(require 'init-md)

(require 'init-c)
(require 'init-java)
(require 'init-js)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(kill-buffer "*scratch*")
;; Files dependent.
(dired "~/sync-cloned/uni/now/")
(split-window-right)
(other-window 1)
(dired "~/sync-cloned/notebooks/")
(other-window 1)

(provide 'init)
;;; init.el ends here
