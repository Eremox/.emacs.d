
; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq ring-bell-function 'ignore)

(blink-cursor-mode 0)
(setq-default cursor-type 'bar)

(setq initial-frame-alist '((top . 30) (left . 95) (width . 200) (height . 80)))

;; Load theme.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")
(load-theme 'solarized-dark t)

(set-frame-font
    "-*-DejaVu Sans Mono-normal-normal-normal-*-14-*-*-m-0-iso10646-1")

;; Standard settings. Do not touch"
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t)

;; full path in title bar
(setq-default frame-title-format "%b (%f)")

;; don't pop up font menu
(global-set-key (kbd "s-t") '(lambda () (interactive)))


;; ECB setup
(add-to-list 'load-path "~/.emacs.d/ecb/")
(require 'ecb)
(setq ecb-tip-of-the-day nil) 
(setq ecb-windows-width 0.2)

(ecb-activate)


;; column marker
(add-hook 'after-change-major-mode-hook 'fci-mode)

;;; ui.el ends here

