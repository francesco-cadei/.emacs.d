;;; init.el --- init -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq package-enable-at-startup nil)
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
(require 'init-syntax-check)
(require 'init-org)

(add-to-list 'load-path (expand-file-name "init-languages" user-emacs-directory))

(require 'init-markdown)

(require 'init-c-c++)
(require 'init-java)
(require 'init-javascript)

(require 'init-clojure)
(require 'init-haskell)

(require 'init-latex)

(provide 'init)
;;; init.el ends here
