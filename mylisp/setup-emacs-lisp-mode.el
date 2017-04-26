
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'parinfer-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

;; from paredit-menut.el
(eval-after-load "paredit.el"
  '(require 'paredit-menu))

;; from https://github.com/DogLooksGood/parinfer-mode README.org
;;(use-package parinfer
;;  :ensure t
;;  :bind
;;  (("C-," . parinfer-toggle-mode))
;;  :init
;;  (progn
;;    ;;(setq parinfer-extensions
;;    ;;      '(defaults       ; should be included.
;;    ;;        pretty-parens  ; different paren styles for different modes.
;;    ;;        ;;evil           ; If you use Evil.
;;    ;;        ;;lispy          ; If you use Lispy. With this extension, you should install Lispy and do not enable lispy-mode directly.
;;    ;;        ;;paredit        ; Introduce some paredit commands.
;;    ;;        smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
;;    ;;        smart-yank))   ; Yank behavior depend on mode.
;;    (add-hook 'clojure-mode-hook #'parinfer-mode)
;;    (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
;;    (add-hook 'common-lisp-mode-hook #'parinfer-mode)
;;    (add-hook 'scheme-mode-hook #'parinfer-mode)
;;    (add-hook 'lisp-mode-hook #'parinfer-mode)))

(provide 'setup-emacs-lisp-mode)
