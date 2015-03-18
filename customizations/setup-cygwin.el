(setenv "PATH" (concat "c:/cygwin64/bin;" (getenv "PATH")))
(setq exec-path (cons "c:/cygwin64/bin/" exec-path))
(require 'cygwin-mount)
(cygwin-mount-activate)


(add-hook 'comint-output-filter-functions
