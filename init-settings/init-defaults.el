;;; init-defaults.el --- init-defaults -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq inhibit-startup-message t)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq make-backup-files nil)
(setq delete-by-moving-to-trash t)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq kill-buffer-query-functions nil)
(setq confirm-kill-processes nil)

(global-set-key (kbd "C-x k") 'kill-this-buffer)
(setq browse-url-browser-function 'browse-url-firefox)

(add-hook 'prog-mode-hook 'linum-mode)
(setq column-number-mode t)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))

(server-start)

(require 'whitespace)
(delete 'lines whitespace-style)
(delete 'empty whitespace-style)
(global-whitespace-mode)

(require 'saveplace)
(save-place-mode)

(provide 'init-defaults)
;;; init-defaults.el ends here
