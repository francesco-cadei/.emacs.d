;;; init-extra.el --- init-extra -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package json-mode)

(use-package markdown-mode
  :mode ("\\.md\\'" . markdown-mode))

(use-package plantuml-mode
  ;; :config
  ;; (eval-and-compile (defun hex-encode (str)
  ;; 		      (string-join (mapcar (lambda (c) (format "%02x" c)) (encode-coding-string str 'utf-8)))))
  ;; (defun plantuml-server-encode-url (string)
  ;;   "Encode the string STRING into a URL suitable for PlantUML server interactions."
  ;;   (let* ((encoded-string (hex-encode string)))
  ;;     (concat plantuml-server-url "/" plantuml-output-type "/~h" encoded-string)))
  :mode ("\\.pu\\'" . plantuml-mode))
;; M-x plantuml-download-jar

;; (use-package diagram-preview
;;   :hook (plantuml-mode . diagram-preview-mode))

(provide 'init-extra)
;;; init-extra.el ends here
