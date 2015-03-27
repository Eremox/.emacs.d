;;;; Package --- Summary
;; ui.el starts here
;;;;

;;; Commentary:


;;; Code:

(require 'ecb)
(require 'color-theme)

(add-hook 'after-change-major-mode-hook 'fci-mode)

;; Load theme.
;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;(add-to-list 'load-path "~/.emacs.d/themes")
;(load-theme 'soothe t)
(color-theme-initialize)
(color-theme-monokai)

;; Standard settings. Do not touch
(setq x-select-enable-clipboard t
      save-interprogram-paste-before-kill t
      mouse-drag-copy-region t
      select-active-regions nil)

;; windows size
(setq default-frame-alist '((top . 0) (left . 0) (width . 315) (height . 80)))
;(add-hook 'after-init-hook '(lambda () (w32-send-sys-command #xf030)))

;; ECB setup
(setq ecb-tip-of-the-day nil) 
(setq ecb-windows-width 0.2)
(ecb-activate)

; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)

(add-hook 'after-change-major-mode-hook 'fci-mode) ; column marker
(global-font-lock-mode 1)
(size-indication-mode 1)                       ; Shows buffer size
(delete-selection-mode 1)                      ; Replace/delete active region by typing

(set-frame-font "-*-Monaco-Normal-*-*-*-14-*-*-m-0-iso10646-1")
(cua-mode t)                                   ; Cut/Paste with C-x/C-c/C-v
(tool-bar-mode -1)                             ; No toolbar
(menu-bar-mode -1)                             ; No menubar
(scroll-bar-mode -1)                           ; No scrollbar
;(set-scroll-bar-mode 'right)                   ; Scrollbar on the right
(setq inhibit-startup-message t)               ; No message at startup
(setq visible-bell t)                          ; No beep when reporting errors
(global-hl-line-mode t)                        ; Highlight cursor line

(blink-cursor-mode 0)                          ; No blinking cursor
;(setq-default cursor-type 'bar)
(setq mouse-yank-at-point t)                   ; Paste at cursor position
(setq scroll-preserve-screen-position t)       ; Scroll without moving cursor
(mouse-avoidance-mode 'jump)                   ; Mouse avoids cursor
(set-cursor-color "#FFFFFF")                   ; Cursor color
;(column-number-mode t)                         ; Show column number in mode-line
(mouse-wheel-mode t)                           ; Mouse-wheel enabled

(setq auto-save-timeout 60)                    ; Autosave every minute
(desktop-save-mode t)                          ; Save session before quitting
(setq confirm-kill-emacs 'yes-or-no-p)         ; Confirm quit
(setq make-backup-files nil)                   ; No backup files ~
(setq read-file-name-completion-ignore-case t) ; Ignore case when completing file names

(setq-default indent-tabs-mode nil)            ; Use spaces instead of tabs
(setq tab-width 4)                             ; Length of tab is 4 SPC
(setq truncate-partial-width-windows nil)      ; Don't truncate long lines
(setq next-line-add-newlines t)                ; Add newline when at buffer end
(setq require-final-newline t)                 ; Always newline at end of file
(show-paren-mode 1)                            ; Highlight parenthesis pairs
(setq blink-matching-paren-distance nil)       ; Blinking parenthesis

(set-language-environment "UTF-8")             ; Default text format
(setq undo-limit 100)                          ; Increase number of undo
(defalias 'yes-or-no-p 'y-or-n-p)              ; y/n instead of yes/no
(setq-default case-fold-search t)              ; Search is case sensitive
(setq frame-title-format "%b - emacs")         ; Use buffer name as frame title
(global-set-key "\C-x\C-b" 'buffer-menu)       ; CxCb puts point on buffer list
(setq window-min-height 10)                    ; Minimal height of windows
(setq enable-recursive-minibuffers t)          ; Stack  minibuffers
(icomplete-mode t)                             ; Completion in mini-buffer
(setq read-buffer-completion-ignore-case t)    ; Ignore case when completing buffer names
(windmove-default-keybindings)                 ; Shift arrows switch windows
                                               ; Note: This interferes with
                                               ;  cua-mode where shift arrow starts
                                               ;  marking. An alternative is
                                               ;  (windmove-default-keybindings 'meta)

;; Interactive search key bindings. By default, C-s runs
;; isearch-forward, so this swaps the bindings.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

(define-key global-map (kbd "RET") 'newline-and-indent)

;; comments
(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))
(global-set-key (kbd "C-;") 'toggle-comment-on-line)

;; ido-mode allows you to more easily navigate choices. For example,
;; when you want to switch buffers, ido presents you with a list
;; of buffers in the the mini-buffer. As you start to type a buffer's
;; name, ido will narrow down the list of buffers to match the text
;; you've typed in
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq ido-auto-merge-work-directories-length -1)
(ido-ubiquitous-mode 1)

;; Enhances M-x to allow easier execution of commands. Provides
;; a filterable list of possible commands in the minibuffer
(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;;;;
;;; ui.el ends here
;;;;
