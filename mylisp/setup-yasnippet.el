
;(add-to-list 'load-path "~/.emacs.d/my-emacs.d/plugins/yasnippet")

(setq yas-snippet-dirs '("/Users/seanegan/.emacs.d/snippets"))
;(add-to-list 'yas-snippet-dirs "/Users/seanegan/.emacs.d/snippets")

(require 'yasnippet)

(yas-global-mode 1)

(global-set-key (kbd "C-c C-n") 'yas-new-snippet)
(global-set-key (kbd "C-c C-v") 'yas-visit-snippet-file)
(global-set-key (kbd "C-c y r") 'yas-reload-all)

(provide 'setup-yasnippet)
