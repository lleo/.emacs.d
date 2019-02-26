(require 'lsp-mode)
(require 'lsp-ui)

(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(define-key lsp-ui-peek-mode-map (kbd "C-n") 'lsp-ui-peek--select-next)
(define-key lsp-ui-peek-mode-map (kbd "C-p") 'lsp-ui-peek--select-prev)

(provide 'setup-lsp)
