
;; Clojure
(setq auto-mode-alist (cons '("\\.edn$" . clojure-mode) auto-mode-alist))  ; *.edn are Clojure files
(setq auto-mode-alist (cons '("\\.cljs$" . clojure-mode) auto-mode-alist)) ; *.cljs are Clojure files
(setq auto-mode-alist (cons '("\\.boot$" . clojure-mode) auto-mode-alist))

;; nREPL customizations
;;(setq nrepl-hide-special-buffers t)                                        ; Don't show buffers like connection or server
;;(setq nrepl-popup-on-error nil)                                            ; Don't popup new buffer for errors (show in nrepl buffer)
;;(setq nrepl-popup-stacktraces-in-repl t)                                   ; Display stacktrace inline

;; Enable eldoc - shows fn argument list in echo area
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)

;; Use paredit in *nrepl* buffer
(add-hook 'nrepl-mode-hook 'paredit-mode)

;; Make C-c C-z switch to *nrepl*
;(add-to-list 'same-window-buffer-names "*nrepl*")

;;(defun my-clojure-config ()
;;  "add stuff when entering clojure-mode"
;;  (add-hook 'clojure-mode-hook 'paredit-mode)
;;  (add-hook 'clojure-mode-hook 'parinfer-mode)
;;  (local-set-key (kbd "C-c C-l") 'do-something-fn))
;;(add-hook 'clojure-mode-hook 'my-clojure-config)


(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'parinfer-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)


(require 'ac-cider)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(progn
     (add-to-list 'ac-modes 'cider-mode)
     (add-to-list 'ac-modes 'cider-repl-mode)))

;; By default, entries in the popup menu will also display the namespace that
;; the symbol belongs to. To disable this behavior, add to your init file:
;;(setq ac-cider-show-ns nil)

;; If you want to trigger auto-complete using TAB in CIDER buffers, add this
;; to your configuration file (but note that it is incompatible with
;; (setq tab-always-indent 'complete)):
;;(defun set-auto-complete-as-completion-at-point-function ()
;;  (setq completion-at-point-functions '(auto-complete)))
;;(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)
;;(add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)

(provide 'setup-clojure)
