;;;;
;; Haskell Setup
;;;;

;; Cabal load path
(let ((my-cabal-path (expand-file-name "~/AppData/Roaming/cabal/bin")))
  (setenv "PATH" (concat my-cabal-path ";" (getenv "PATH")))
  (add-to-list 'exec-path my-cabal-path))

;; GHC-mode
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(require 'hi2)
(add-hook 'haskell-mode-hook 'turn-on-hi2)
(setq haskell-stylish-on-save t)
(eval-after-load 'flycheck '(require 'flycheck-hdevtools))

;; Custom Interactive Commands
(eval-after-load 'haskell-mode '(progn
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
  (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
  (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
  (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
  (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)
  (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)))
(eval-after-load 'haskell-cabal '(progn
  (define-key haskell-cabal-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
  (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
  (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)))

;;;;
;;; setup-haskell.el ends here
;;;;
