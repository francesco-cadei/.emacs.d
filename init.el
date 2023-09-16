;;; init.el --- init -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (setq debug-on-error t)
(add-to-list 'load-path (expand-file-name "init-settings" user-emacs-directory))

(require 'init-packages)
(require 'init-defaults)
(require 'init-dired)

(require 'init-frames)
(require 'init-minibuffer)
(require 'init-buffers-management)
(require 'init-git)
(require 'init-terminal)

(require 'init-completion)
(require 'init-indent)
(require 'init-formatting)
(require 'init-spell-syntax-check)
(require 'init-org)

(add-to-list 'load-path (expand-file-name "init-languages" user-emacs-directory))

(require 'init-markdown)

(require 'init-c-c++)
(require 'init-java)
(require 'init-javascript)

(require 'init-haskell)

(require 'init-latex)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(provide 'init)
;;; init.el ends here
