;; File: setup-changes.el
;;

(defun my-highlight-changes ()
  (highlight-changes-mode t))

(add-hook 'text-mode-hook 'my-highlight-changes)
(add-hook 'prog-mode-hook 'my-highlight-changes)

;;(global-highlight-changes-mode-hook)
(provide 'setup-changes)
