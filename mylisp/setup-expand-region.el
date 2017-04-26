;; Setup expand region
(require 'expand-region)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-+") 'er/contract-region)
(pending-delete-mode t)

(provide 'setup-expand-region)
