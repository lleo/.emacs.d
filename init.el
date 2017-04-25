;; FRESH EMACS CONFIG .init.el

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
(load custom-file)

;; Set my-lisp-dir variable to .emacs.d/mylisp
(setq my-lisp-dir (expand-file-name "mylisp" dotfiles-dir))

;; Define 'elpa-dir
(setq elpa-dir (expand-file-name "elpa" dotfiles-dir))

;; Set up load path
(add-to-list 'load-path my-lisp-dir)
(add-to-list 'load-path elpa-dir)
