;;; init-minibuffer.el --- init-minibuffer -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package ivy
  :config
  (setq ivy-extra-directories '("./"))
  (ivy-mode)
  (ivy-rich-mode))

(require 'ivy)
(use-package swiper
  :bind
  (("C-s" . 'swiper)
   ("C-r" . 'swiper)
   ("C-M-s" . 'swiper-thing-at-point)
   ("C-M-r" . 'swiper-thing-at-point)
   :map swiper-map
   ("C-s" . 'ivy-next-line-or-history)
   ("C-r" . 'ivy-previous-line-or-history)))

(use-package counsel
  :bind
  ("M-x" . 'counsel-M-x)
  ("M-y" . 'counsel-yank-pop)
  ("C-x C-f" . 'counsel-find-file)
  ("C-x C-g" . 'counsel-git)
  ("C-h f" . 'counsel-describe-function)
  ("C-h v" . 'counsel-describe-variable)
  ("C-c r" . 'counsel-recentf)
  ("C-c g" . 'counsel-rg)
  ("C-c a" . 'counsel-linux-app))

(use-package flyspell-correct-ivy
  :config (setq flyspell-correct-interface 'flyspell-correct-ivy)
  :bind ("M-$" . flyspell-correct-wrapper))

(use-package all-the-icons-ivy-rich
  :config (all-the-icons-ivy-rich-mode))

(use-package ivy-rich
  :config (ivy-rich-mode))

(provide 'init-minibuffer)
;;; init-minibuffer.el ends here
