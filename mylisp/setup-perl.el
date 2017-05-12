(defalias 'perl-mode 'cperl-mode)

(defun my-cperl-mode-hook ()
  (set 'tab-width 4))

(add-hook 'cperl-mode-hook 'my-cperl-mode-hook)

(provide 'setup-perl)
