(require 'multiple-cursors)

;;(global-set-key (kbd "C-S-c") 'mc/edit-lines) ;;default
(global-set-key (kbd "C-S-m") 'mc/edit-lines)

;;(global-set-key (kbd "C->") 'mc/mark-next-like-this) ;;default
(global-set-key (kbd "C-.") 'mc/mark-next-like-this)

;;(global-set-key (kbd "C-<") 'mc/mark-previous-like-this) ;;default
(global-set-key (kbd "C-,") 'mc/mark-previous-like-this)

;;(global-set-key (kbd "M->") 'mc/unmark-next-like-this) ;;default
(global-set-key (kbd "M-.") 'mc/unmark-next-like-this)

;;(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this) ;;default
(global-set-key (kbd "C-c C-.") 'mc/mark-all-like-this)

(provide 'setup-multiple-cursors)
