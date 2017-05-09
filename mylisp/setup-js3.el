;;;Add the following custom-set-variables to use 'lazy' modes
(defun my-js3-hook ()
  (set 'js3-lazy-operators t)
  (set 'js3-lazy-dots t)
  (set 'js3-basic-offset 2)
  (set 'js3-highlight-level 3)
  (set 'js3-indent-on-enter-key t)
  (set 'js3-mirror-mode t)
  (set 'js3-mode-escape-quotes nil)
  (set 'js3-auto-indent-p t)
  (set 'js3-enter-indents-newline t)
  (set 'js3-strict-inconsistent-return-warning nil)
  (set 'js3-global-externs
       (mapcar (quote symbol-name)
               ('(JSON ArrayBuffer Int8Array Uint8Array Uint8ClampedArray
                  Int16Array Uint16Array Int32Array Uint32Array Float32Array
                  Float64Array DataView process Buffer setTimeout setImmediate
                  setInterval clearTimeout clearImmediate clearInterval ref
                  unref console module exports require))))
  )
;;(custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;; '(js3-lazy-commas t)
;; '(js3-lazy-operators t)
;; '(js3-lazy-dots t)
;; '(js3-basic-offset 2)
;; '(js3-global-externs (mapcar (quote symbol-name) (quote (JSON ArrayBuffer Int8Array Uint8Array Uint8ClampedArray Int16Array Uint16Array Int32Array Uint32Array Float32Array Float64Array DataView process Buffer setTimeout setImmediate setInterval clearTimeout clearImmediate clearInterval ref unref console module exports require))))
;; '(js3-highlight-level 3)
;; '(js3-indent-on-enter-key t)
;; '(js3-mirror-mode t)
;; '(js3-mode-escape-quotes nil)
;; '(js3-auto-indent-p t)
;; '(js3-enter-indents-newline t)
;; '(js3-strict-inconsistent-return-warning nil)
;; '(show-paren-mode t)
;;)

;;(show-paren-mode)
(require 'nodejs-repl)
`
(autoload 'js3-mode "js3" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

(provide 'setup-js3)
