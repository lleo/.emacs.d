(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
;;(add-hook 'emacs-lisp-mode-hook 'parinfer-mode)
;; removed realtime with (remove-hook 'emacs-lisp-mode-hook 'parinfer-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

;; from paredit-menut.el
(eval-after-load "paredit.el"
  '(require 'paredit-menu))

(defun my-emacs-lisp-mode-hook ()
  (set 'indent-tabs-mode nil))
(add-hook 'emacs-lisp-mode-hook 'my-emacs-lisp-mode-hook)

;;(add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
;;(add-hook 'common-lisp-mode-hook #'parinfer-mode)
;;(add-hook 'scheme-mode-hook #'parinfer-mode)
;;(add-hook 'lisp-mode-hook #'parinfer-mode))


(provide 'setup-emacs-lisp-mode)
