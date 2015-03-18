;;;;
;; C-setup file
;;;;

(require 'cc-mode)


(setq-default c-basic-offset 4 c-default-style "k&r")
(setq-default tab-width 4 indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

(require 'autopair)
(add-hook 'cc-mode 'autopair)
(setq autopair-autowrap t)


