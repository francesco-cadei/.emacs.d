(setq make-backup-files nil)

(setq inhibit-startup-message t)
(custom-set-variables
 '(initial-frame-alist '((fullscreen . maximized))))

(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq delete-by-moving-to-trash t)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq kill-buffer-query-functions nil)
(setq confirm-kill-processes nil)

(global-set-key (kbd "C-x k") 'kill-this-buffer)
(setq browse-url-browser-function 'browse-url-firefox)

(add-hook 'prog-mode-hook 'linum-mode)
(setq column-number-mode t)

(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))

(require 'whitespace)
(delete 'lines whitespace-style)
(delete 'empty whitespace-style)
(global-whitespace-mode)
