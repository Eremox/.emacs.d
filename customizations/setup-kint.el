;;; setup-kint.el starts here

(defun kint-mode ()
  (paredit-mode)
  (scheme-mode))

;; setup files ending in “.js” to open in js2-mode
(add-to-list 'auto-mode-alist '("\\.kt\\'" . kint-mode))

;;; setup-kint.el ends here
