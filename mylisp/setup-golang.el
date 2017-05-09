(setenv "GOPATH" "/Users/seanegan/prj/golang")

;;(add-hook 'before-save-hook 'gofmt-before-save)

(defun my-go-mode-hook ()
  ;; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
	   "go build -v && go test -v && go vet"))
  ;; Godef jump key binding  
  (local-set-key (kbd "M-.") 'godef-jump)
  ;;
  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
  ;;
  ;;(auto-pair-mode)
  ;;
  ;;not (setq tab-width 4)
  ;;not (set-variable 'tab-width 4 t) ;;with or without last parameter t
  (set 'tab-width 4)
  ;;
  ;(go-guru-hl-identifier-mode 1)
  )

(add-hook 'go-mode-hook 'my-go-mode-hook)
(add-hook 'go-mode-hook 'go-guru-hl-identifier-mode)

(setq gofmt-command "goimports")

(provide 'setup-golang)
