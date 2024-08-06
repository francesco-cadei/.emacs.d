;;; init.el --- init -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "init-settings" user-emacs-directory))

(require 'init-core)

(require 'init-minibuffer)
(require 'init-directory)

(require 'init-complete)
(require 'init-format)
(require 'init-check)

(require 'init-vc)

(add-to-list 'load-path (expand-file-name "init-languages" user-emacs-directory))

(require 'init-org)
(require 'init-tex)
(require 'init-extra)

(require 'init-c)
(require 'init-eglot)

(load (expand-file-name "custom.el" user-emacs-directory) 'noerror)

(provide 'init)
;;; init.el ends here
