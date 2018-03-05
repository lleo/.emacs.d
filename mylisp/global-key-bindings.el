(when is-mac
  ;; give me back my option key
  ;; mac-option-modifier is an alias for ns-alternate-modifier
  ;;(setq ns-alternate-modifier (quote none))
  (setq mac-option-modifier 'none)

  ;;(setq mac-option-modifier 'meta)
  ;; now taked away one; make the right option key 'meta
  (setq mac-right-option-modifier 'meta)

  (setq mac-right-command-modifier 'meta)

  (setq mac-command-modifier 'super)

  (setq mac-funciton-modifier 'hyper)

  ;;(setq mac-control-modifier 'control)
  ;;(setq mac-right-control-modifier 'control)

  )


(global-set-key (kbd "C-x p") 'previous-multiframe-window)

(defun my-copy-rectangle (start end)
   "Copy the region-rectangle instead of `kill-rectangle'."
   (interactive "r")
   (setq killed-rectangle (extract-rectangle start end)))

(global-set-key (kbd "C-x r M-w") 'my-copy-rectangle)


(defun my-cut-to-register (register start end)
  "call copy-to-register with a prefix arg"
  (interactive "cCopy to register: \nr")
  (copy-to-register register start end t))

(global-set-key (kbd "C-x r x") 'my-cut-to-register)
(global-set-key (kbd "C-x C-o") 'overwrite-mode) ;;was 'delete-blank-lines


(defun goto-match-paren (arg)
  "Go to the matching parenthesis if on parenthesis, otherwise insert %.
vi style of % jumping to matching brace."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

(global-set-key (kbd "C-%") 'goto-match-paren)

;; this requires a previous regex search hence 'search-forward-regex
(global-set-key (kbd "C-_") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
;;(global-set-key (kbd "M-#") 'isearch-query-replace-regexp)
(global-set-key (kbd "M-#") 'query-replace-regexp) ;currently C-M-%
;;;;(global-set-key (kbd "C-c C-s") 'isearch-forward-regexp)
;;(global-set-key (kbd "C-c C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-/") 'isearch-forward-regexp)
(global-set-key (kbd "C-?") 'isearch-backward-regexp)

(provide 'global-key-bindings)
