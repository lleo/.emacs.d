(require 'package)

;;
;; Initialize package configuration.
;;
;; !!! This MUST come before ANY package configuration/reference !!!
;;

(defvar marmalade
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(defvar gnu
  '("gnu" . "http://elpa.gnu.org/packages/"))
(defvar melpa
  '("melpa" . "http://melpa.milkbox.net/packages/"))
(defvar melpa-stable
  '("melpa-stable" . "https://stable.melpa.org/packages/"))

(add-to-list 'package-archives melpa-stable t)
(add-to-list 'package-archives melpa t)
(add-to-list 'package-archives marmalade)

(package-initialize)


(unless (and (file-exists-p "~/.emacs.d/elpa/archives/marmalade")
             (file-exists-p "~/.emacs.d/elpa/archives/gnu")
             (file-exists-p "~/.emacs.d/elpa/archives/melpa-stable")
             (file-exists-p "~/.emacs.d/elpa/archives/melpa"))
  (message "all four dirs exist")
  (package-refresh-contents))

;; This function allows you to select which repository to install
;; which package from.
(defun packages-install (&rest packages)
  (mapc (lambda (package)
          (let ((name (car package))
                (repo (cdr package)))
            (when (not (package-installed-p name))
              (let ((package-archives (list repo)))
                (package-initialize)
                (package-install name)))))
        packages)
  (package-initialize)
  (delete-other-windows))

(provide 'setup-package)
