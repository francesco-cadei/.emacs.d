;;; early-init.el --- early-init -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq inhibit-startup-message t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(provide 'early-init)
;;; early-init.el ends here
