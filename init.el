;;;; FRESH EMACS CONFIG .init.el
;;added to check ~/.git config

;; Added by Package.el.  This must come before configurations of ...
;;(package-initialize)

;; Turn off mouse interface early in startup to avoid momentary display
(when (not window-system)
  (if (fboundp 'menu-bar-mode) (menu-bar-mode -1)))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq inhibit-startup-message t)

;; Set path to .emacs.d
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" dotfiles-dir))
;;(load custom-file)

;; Set my-lisp-dir variable to .emacs.d/mylisp
(setq my-lisp-dir (expand-file-name "mylisp" dotfiles-dir))

;; Define 'elpa-dir
(setq elpa-dir (expand-file-name "elpa" dotfiles-dir))

;; Set up load path
(add-to-list 'load-path my-lisp-dir)
(add-to-list 'load-path elpa-dir)

;; Write backup files to own directory
(setq backup-directory-alist `(("." . ,(expand-file-name
                                        (concat dotfiles-dir "backups")))))

;; Save point position between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" dotfiles-dir))

;; boolean symbol identifying the host os
;; their could/should be other symbols for other systems
;; for example hypothetically is-windows and is-linux
(setq is-mac (equal system-type 'darwin))

(require 'global-defaults)
(require 'global-key-bindings)
(require 'setup-path)

;;
;; !!! REMEMBER ielm is the interactive elisp command line interface
;;

;; !!! This MUST come before ANY package configuration/reference !!!
(require 'setup-package)
(require 'setup-packages)

(require 'setup-changes)
(require 'setup-expand-region)
(require 'setup-hide-show)
(require 'setup-yasnippet)
(require 'setup-ido)
(require 'setup-linum)
(require 'setup-multiple-cursors)
(require 'setup-auto-complete)
(require 'setup-js3)
(require 'setup-golang)
(require 'setup-emacs-lisp-mode)
(require 'setup-clojure)
(require 'setup-nodejs)
(require 'setup-server)
(require 'setup-smart-tabs)
(require 'setup-perl)
(require 'setup-org-mode)
(require 'setup-markdown)
(require 'setup-lua)

(load custom-file)
(load-theme 'sanityinc-tomorrow-bright)

(when window-system

  ;set window size
  (add-to-list 'default-frame-alist '(width . 177)) ; columns wide
  (add-to-list 'default-frame-alist '(height . 50)) ; rows deep

  ;;turn on desktop-save-mode and always save; this is NOT saveplace stuff
  (setq desktop-save t)
  (desktop-save-mode 1))
