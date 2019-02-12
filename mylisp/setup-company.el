(require 'company-lsp)
(push 'company-lsp company-backends)

(add-hook 'after-init-hook 'global-company-mode)

(provide 'setup-company)
