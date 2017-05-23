(defun my-org-mode-hook ()
  (org-bullets-mode t))

(add-hook 'org-mode-hook 'my-org-mode-hook)

(provide 'setup-org-mode)
