;;;;
;; Packages
;;;;

;; Define package repositories
(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa"     . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org"       . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu"       . "http://elpa.gnu.org/packages/"))
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))


(require 'nlinum)
(require 'flycheck)
(global-nlinum-mode 1)
(cua-mode 1)
(global-flycheck-mode)


;;;;;;;;;;;;;;;;;;;
;; Customization ;;
;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(coffee-tab-width 2)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
	("87755ed88c91cd87ee37b666b82edeb382b3a3a6191078a56bec558ebf8a58d9" "868f73b5cf78e72ca2402e1d48675e49cc9a9619c5544af7bf216515d22b58e7" "4ff23437b3166eeb7ca9fa026b2b030bba7c0dfdc1ff94df14dfb1bcaee56c78" "d43e974712705ab6d6dca77ffd741171d181be7b3fbfa40eef0f97397c86167f" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" "7ed6913f96c43796aa524e9ae506b0a3a50bfca061eed73b66766d14adfa86d1" "d96416845141e99d05d45b5f99ecf46458bf97654be7d2e20184c5edcda1580a" "b0984818158ff2fa3ae511a2f3db7ea239a223d1dc09475c6c2ccdbc8ee03dd3" "7a00b0710bb2e400d33a925f94b1cd8cfa2281f864ac9506b9046703e0045d66" "a507b9ca4a605d5256716da70961741b9ef9ec3246041a4eb776102e8df18418" "456ac8176c7c01680384356cbdc568a7683d1bada9c83ae3d7294809ddda4014" "1177fe4645eb8db34ee151ce45518e47cc4595c3e72c55dc07df03ab353ad132" "9e54a6ac0051987b4296e9276eecc5dfb67fdcd620191ee553f40a9b6d943e78" "569dc84822fc0ac6025f50df56eeee0843bffdeceff2c1f1d3b87d4f7d9fa661" default)))
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote (("c:" "c:"))))
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#383838")
 '(fringe-mode 10 nil (fringe))
 '(haskell-interactive-mode-hide-multi-line-errors nil)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote cabal-repl))
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
 '(linum-format (quote dynamic))
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
 '(weechat-color-list
   (quote
	(unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
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

;; Editor-specific
(load "shell-integration.el")
(load "navigation.el")
(load "ui.el")
(load "editing.el")
(load "misc.el")
;; Langauage-specific
(load "setup-clojure.el")
(load "setup-haskell.el")
;(load "setup-java.el")
(load "setup-c.el")

;;; init.el ends here
