;;; init-mp.el --- init-mp -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package yaml-mode)

(use-package dart-mode
  :hook (dart-mode . flutter-test-mode))

(use-package flutter
  :after dart-mode
  :custom (flutter-sdk-path "/home/fra/development/flutter/bin/")
  :bind (:map dart-mode-map
              ("C-M-x" . 'flutter-run-or-hot-reload)))

(provide 'init-mp)
;;; init-mp.el ends here
