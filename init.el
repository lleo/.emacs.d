;; FRESH EMACS CONFIG .init.el

;; Turn off mouse interface early in startup to avoid momentary display
(when (not window-system)
  (if (fboundp 'menu-bar-mode) (menu-bar-mode -1)))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
