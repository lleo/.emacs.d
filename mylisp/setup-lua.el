(defun my-lua-hook ()
  )

(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))

(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;;(add-hook 'lua-mode-hook 'my-lua-hook)

(provide 'setup-lua)
