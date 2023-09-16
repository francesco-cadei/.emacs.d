;;; init-packages.el --- init-packages -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(provide 'init-packages)
;;; init-packages.el ends here
