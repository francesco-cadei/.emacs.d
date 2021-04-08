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
   :map swiper-map
   ("C-s" . 'ivy-next-line-or-history)
   ("C-r" . 'ivy-previous-line-or-history)))

(use-package counsel
  :bind
  ("M-x" . 'counsel-M-x)
  ("C-x C-f" . 'counsel-find-file)
  ("C-x g" . 'counsel-git)
  ("C-x j" . 'counsel-git-grep)
  ("C-h f" . 'counsel-describe-function)
  ("C-h v" . 'counsel-describe-variable))
