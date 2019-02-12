;; for go-mode where I use actual tabs for indentation
;;(setq default-tab-width 8)

;; whitespace-style same as default, except I've removed newline-mark
;; and space-mark. If you don't like the » single character symbol
;; that indicates tabs remove "tab-mark" from white-space-style.
;; BTW » is \u00BB aka &raquo; in HTML or
;; RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK in unicode.
(setq whitespace-style '(face trailing newline space-before-tab
                         empty space-after-tab tab-mark)) ;;turned off "lines"

(global-whitespace-mode t)
;;(setq show-trailing-whitespace t)
;; M-x set-variable show-trailing-whitespace t

(global-hl-line-mode t)

(setq x-stretch-cursor t) ;;show tabs with wide cursor

;; automatically insert matching pair for example type "(" get ")" with the fffff
;; cursor positioned between them. It is even mode-aware so if you are in
;; a programming mode less-than "<" is not automatically matched, but if
;; you are in a HTML mode it will. I think it is context aware for languages
;; that use both less-than "a < b" and matched angle brackets "<ParamType>".
;; It'll even delete pairs, you have to see it to understand.
(electric-pair-mode 1)
(show-paren-mode 1)
;;(setq show-paren-delay 0)

;;make emacs scroll more "normally" (ie like other gui editors)
(setq scroll-conservatively 1) ;;scroll one line at a time
(setq scroll-margin 1)         ;;keep the next line in view

;; Turn on line numbers on left gutter
(global-linum-mode t)
(setq linum-format "%3d")

(column-number-mode) ;; in the status bar

(fset 'yes-or-no-p 'y-or-n-p)

(global-set-key [remap eval-last-sexp] 'pp-eval-last-sexp)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(provide 'global-defaults)
