;;; init.el --- init -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "init-settings" user-emacs-directory))

(require 'init-core)

(require 'init-minibuffer)
(require 'init-buffers)
(require 'init-folders)

(require 'init-completions)
(require 'init-format)
(require 'init-check)

(require 'init-vc)

(require 'init-theme)

(add-to-list 'load-path (expand-file-name "init-languages" user-emacs-directory))

(require 'init-org)
(require 'init-tex)
(require 'init-uml)
(require 'init-extra)

(require 'init-c)
(require 'init-eglot)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(provide 'init)
;;; init.el ends here
