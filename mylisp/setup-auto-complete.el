(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; Remember: `M-x ac-clear-dictionary-cache` to reload dict files
;; ~/.emacs.d/ac-dict/<major-mode> for a major-mode based dictionary file
;; ~/.emacs.d/ac-dict/<file-ext> for a file extension based dictionary file
;; ex. ~/.emacs.d/ac-dict/js3-mode and/or ~/.emacs.d/js for my node.js source
;;     files.


(add-to-list 'ac-modes 'js3-mode)
(add-to-list 'ac-modes 'jade-mode)
(add-to-list 'ac-modes 'markdown-mode)
(add-to-list 'ac-modes 'go-mode)
;;(add-to-list 'ac-modes 'html-mode)
(add-to-list 'ac-modes 'clojure-mode)
(add-to-list 'ac-modes 'emacs-lisp-mode)

(ac-config-default)

(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)

(setq ac-use-menu-map t)
;; Default settings
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(setq ac-delay 0.2) ; default is 0.8
;(setq ac-auto-show-menu 2.0) ; default is 1.5
(setq ac-quick-help-delay 1.5) ; this is the default
(setq ac-auto-start 4) ; default is 2
(setq ac-ignore-case nil) ; t | nil | smart
(setq ac-quick-help-prefer-pos-tip t)

; '(ac-trigger-commands-on-completing (quote (delete-backward-char backward-delete-char backward-delete-char-untabify autopair-backspace paredit-backward-delete paredit-backward-delete-word backward-char)))

(provide 'setup-auto-complete)
