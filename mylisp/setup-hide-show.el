
(load-library "hideshow")
;;(require 'hideshow)
(global-set-key (kbd "C-\\") 'toggle-hiding)
(global-set-key (kbd "C-|") 'toggle-selective-display)

(defun toggle-hiding (column)
  (interactive "P")
  (if hs-minor-mode
	  (if (condition-case nil
			  (hs-toggle-hiding)
			(error t))
		  (hs-show-all))
	(toggle-selective-display column)))

(add-hook 'go-mode-hook         'hs-minor-mode)
(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)

(provide 'setup-hide-show)
