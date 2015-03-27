;;;;
;; Packages
;;;;

;; Define package repositories
(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa"     . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org"       . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("elpa"      . "http://elpa.gnu.org/packages/"))
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

;;;;;;;;;;;;;;;;;;;
;; Customization ;;
;;;;;;;;;;;;;;;;;;;

(require 'nlinum)
(require 'flycheck)
(global-nlinum-mode 1)
(global-flycheck-mode)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote ((haskell-indent-spaces . 4)
           (haskell-indent-spaces . 2)
           (hindent-style . "chris-done")
           (hindent-style . "gibiansky")
           (hindent-style . "johan-tibell")
           (haskell-process-type . cabal-repl)
           (shm-lambda-indent-style . leftmost-parent))))
 '(haskell-interactive-mode-hide-multi-line-errors nil)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-suggest-remove-import-lines t)
 
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote (("c:" "c:"))))
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#383838")
 '(fringe-mode 10 nil (fringe))
 '(highlight-changes-colors ("#FD5FF0" "#AE81FF"))
 '(highlight-symbol-colors
   (--map
	(solarized-color-blend it "#002b36" 0.25)
	(quote
	 ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (("#49483E" . 0)
	("#67930F" . 20)
	("#349B8D" . 30)
	("#21889B" . 50)
	("#968B26" . 60)
	("#A45E0A" . 70)
	("#A41F99" . 85)
	("#49483E" . 100)))
 '(hl-bg-colors
   (quote
	("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
	("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(magit-diff-use-overlays nil)
 '(main-line-color1 "#222912")
 '(main-line-color2 "#09150F")
 '(main-line-separator-style (quote chamfer))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(powerline-color1 "#222912")
 '(powerline-color2 "#09150F")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
	((20 . "#F92672")
	 (40 . "#CF4F1F")
	 (60 . "#C26C0F")
	 (80 . "#E6DB74")
	 (100 . "#AB8C00")
	 (120 . "#A18F00")
	 (140 . "#989200")
	 (160 . "#8E9500")
	 (180 . "#A6E22E")
	 (200 . "#729A1E")
	 (220 . "#609C3C")
	 (240 . "#4E9D5B")
	 (260 . "#3C9F79")
	 (280 . "#A1EFE4")
	 (300 . "#299BA6")
	 (320 . "#2896B5")
	 (340 . "#2790C3")
	 (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil t)
 '(when (not (facep (aref ansi-term-color-vector 0)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")
(add-to-list 'load-path "~/.emacs.d/extensions")

;; Environment
(load "ui.el")
(load "misc.el")
(load "shell-integration.el")

;; Language-specific
;(load "setup-c.el")
(load "setup-kint.el")
(load "setup-clojure.el")
(load "setup-haskell.el")

;;; init.el ends here
