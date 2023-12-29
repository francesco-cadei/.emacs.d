;;; init-uml.el --- init-uml -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package plantuml-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.puml\\'" . plantuml-mode)))
;; plantuml-download-jar

(provide 'init-uml)
;;; init-uml.el ends here
