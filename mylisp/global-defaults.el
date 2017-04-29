;; for go-mode where I use actual tabs for indentation
(setq default-tab-width 4)

(setq show-trailing-whitespace t)
;; M-x set-variable show-trailing-whitespace t

(setq x-stretch-cursor t) ;;show tabs with wide cursor

;; automatically insert matching pair for example type "(" get ")" with the
;; cursor positioned between them. It is even mode-aware so if you are in
;; a programming mode less-than "<" is not automatically matched, but if
;; you are in a HTML mode it will. I think it is context aware for languages
;; that use both less-than "a < b" and matched angle brackets "<ParamType>".
;; It'll even delete pairs, you have to see it to understand.
(electric-pair-mode 1)

;;make emacs scroll more "normally" (ie like other gui editors)
(setq scroll-conservatively 1) ;;scroll one line at a time
(setq scroll-margin 1)         ;;keep the next line in view

;; Turn on line numbers on left gutter
(global-linum-mode t)
(setq linum-format "%3d")

(column-number-mode) ;; in the status bar

(fset 'yes-or-no-p 'y-or-n-p)

(global-set-key [remap eval-last-sexp] 'pp-eval-last-sexp)

(provide 'global-defaults)
