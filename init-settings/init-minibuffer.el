;;; init-minibuffer.el --- init-minibuffer -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package ivy
  :config
  (setq ivy-extra-directories '("./"))
  (ivy-mode))

(require 'ivy)
(use-package swiper
  :bind
  (("C-s" . 'swiper)
   ("C-r" . 'swiper)
   ("C-M-s" . 'swiper-thing-at-point)
   ("C-M-r" . 'swiper-thing-at-point)
   ("M-x" . 'counsel-M-x)
   ("M-y" . 'counsel-yank-pop)
   ("C-x C-f" . 'counsel-find-file)
   ("C-h f" . 'counsel-describe-function)
   ("C-h v" . 'counsel-describe-variable)
   ("C-c r" . 'counsel-recentf)
   ("C-c g" . 'counsel-rg)
   :map swiper-map
   ("C-s" . 'ivy-next-line-or-history)
   ("C-r" . 'ivy-previous-line-or-history)))

(use-package ivy-rich)
(add-hook 'after-init-hook 'ivy-rich-mode)

(use-package all-the-icons-ivy-rich
  :config (all-the-icons-ivy-rich-mode))

(provide 'init-minibuffer)
;;; init-minibuffer.el ends here
