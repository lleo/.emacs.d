;; File: setup-changes.el
;;

(defun my-highlight-changes ()
  (set 'highlight-changes-visibility-initial-state nil)
  (highlight-changes-mode t)
  ;;(highlight-changes-visible-mode -1)
  )

(add-hook 'text-mode-hook 'my-highlight-changes)
(add-hook 'prog-mode-hook 'my-highlight-changes)

(defun hlc ()
  "Toggle highlight-changes-visible-mode with a shorter name."
  (interactive)
  (if highlight-changes-visible-mode
      (highlight-changes-visible-mode -1)
    (highlight-changes-visible-mode t)))

;;(global-highlight-changes-mode t)
;;(global-highlight-changes-mode-hook)

(provide 'setup-changes)
