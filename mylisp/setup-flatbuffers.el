;; load protobuf-mode for *.fbs files
(setq auto-mode-alist (cons '("\\.fbs$" . protobuf-mode) auto-mode-alist))

(provide 'setup-flatbuffers)
