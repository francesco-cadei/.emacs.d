(setq make-backup-files nil)

(setq inhibit-startup-message t)
(custom-set-variables
 '(initial-frame-alist '((fullscreen . maximized))))

(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq delete-by-moving-to-trash t)
(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "C-x k") 'kill-this-buffer)
(setq browse-url-browser-function 'browse-url-firefox)

(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))
