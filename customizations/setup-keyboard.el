;;;;
;;; setup-keyboard.el starts here
;;;

;; make PC keyboard's Win key or other to type Super or Hyper, for emacs running on Windows.

(setq w32-apps-modifier 'hyper)
(setq w32-lwindow-modifier 'super)
(setq w32-rwindow-modifier 'hyper)

;; super keybindings

;; note> super key doesn't work yet.

(define-key global-map [?\s-d] 'projectile-find-dir)
(define-key global-map [?\s-e] 'er/expand-region)
(define-key global-map [?\s-f] 'projectile-find-file)
(define-key global-map [?\s-g] 'projectile-grep)
(define-key global-map [?\s-j] 'prelude-top-join-line)
(define-key global-map [?\s-k] 'prelude-kill-whole-line)
(define-key global-map [?\s-l] 'goto-line)
(define-key global-map [?\s-m] 'magit-status)
(define-key global-map [?\s-o] 'prelude-open-line-above)
(define-key global-map [?\s-w] 'delete-frame)
(define-key global-map [?\s-x] 'exchange-point-and-mark)

;; hyper keybindings

(define-key global-map [?\H-p] 'projectile-switch-project)

;; greek letters

(define-key 'iso-transl-ctl-x-8-map "a" [?α])         ; C-x 8 a
(define-key 'iso-transl-ctl-x-8-map "A" [?Α])         ; C-x 8 A

(define-key 'iso-transl-ctl-x-8-map "b" [?β])         ; C-x 8 b
(define-key 'iso-transl-ctl-x-8-map "B" [?Β])         ; C-x 8 B

(define-key 'iso-transl-ctl-x-8-map "g" [?γ])         ; C-x 8 g
(define-key 'iso-transl-ctl-x-8-map "G" [?Γ])         ; C-x 8 G

(define-key 'iso-transl-ctl-x-8-map "d" [?δ])         ; C-x 8 d
(define-key 'iso-transl-ctl-x-8-map "D" [?Δ])         ; C-x 8 D

(define-key 'iso-transl-ctl-x-8-map "e" [?ε])         ; C-x 8 d
(define-key 'iso-transl-ctl-x-8-map "E" [?Ε])         ; C-x 8 D

(define-key 'iso-transl-ctl-x-8-map "z" [?ζ])         ; C-x 8 d
(define-key 'iso-transl-ctl-x-8-map "Z" [?Ζ])         ; C-x 8 D

(define-key 'iso-transl-ctl-x-8-map "h" [?η])         ; C-x 8 d
(define-key 'iso-transl-ctl-x-8-map "H" [?Η])         ; C-x 8 D

(define-key 'iso-transl-ctl-x-8-map "l" [?λ])         ; C-x 8 l
(define-key 'iso-transl-ctl-x-8-map "L" [?Λ])         ; C-x 8 L

(define-key 'iso-transl-ctl-x-8-map "s" [?σ])         ; C-x 8 s
(define-key 'iso-transl-ctl-x-8-map "S" [?Σ])         ; C-x 8 S

;;; setup-keyboard.el ends here
