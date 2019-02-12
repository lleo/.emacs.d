;; I am not requiring this from init.el till I find a test case (file)

(smart-tabs-insinuate 'c 'c++ 'java 'javascript 'cperl 'python 'ruby)

(set 'tab-width 2)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;;(autoload 'smart-tabs-mode "smart-tabs-mode"
;;  "Intelligently indent with tabs, align with spaces!")
;;(autoload 'smart-tabs-mode-enable "smart-tabs-mode")
;;(autoload 'smart-tabs-advice "smart-tabs-mode")
;;(autoload 'smart-tabs-insinuate "smart-tabs-mode")

(provide 'setup-smart-tabs)
