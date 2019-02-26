(require 'company-lsp)
(push 'company-lsp company-backends)


;;(with-eval-after-load 'company
;;    (define-key company-active-map (kbd "C-n") 'company-select-next)
;;    (define-key company-active-map (kbd "C-p") 'company-select-previous))
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

(add-hook 'after-init-hook 'global-company-mode)

(provide 'setup-company)
