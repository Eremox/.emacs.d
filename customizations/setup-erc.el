;; Improvements on erc-mode

(defun my-erc-settings ()
  (erc-colorize-mode 1)
  (erc-notify-mode   1))
;;(add-hook 'erc-join-hook (my-erc-settings))

(defun irc ()
    "Connect to the freenode"
    (interactive)
    (erc :server "irc.freenode.net"
         :port 6667
         :nick "Eremox"
         :password "killkillboss"))

;;(add-hook 'erc-mode (irc))
