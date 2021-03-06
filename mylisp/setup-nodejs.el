
(require 'nodejs-repl)

(defun my-js3-key-bindings ()
  (define-key js-mode-map (kbd "C-x C-e") 'nodejs-repl-send-last-sexp)
  (define-key js-mode-map (kbd "C-c C-r") 'nodejs-repl-send-region)
  (define-key js-mode-map (kbd "C-c C-l") 'nodejs-repl-load-file)
  (define-key js-mode-map (kbd "C-c C-z") 'nodejs-repl-switch-to-repl))

(add-hook 'js3-mode-hook 'my-js3-key-bindings)

(provide 'setup-nodejs)
