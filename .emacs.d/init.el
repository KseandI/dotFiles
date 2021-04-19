(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'xah-html-mode)
(require 'xah-elisp-mode)
(require 'xah-css-mode)


(require 'linum+)
(global-linum-mode)
(setq linum-format "%4d ")

; Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme `weyland-yutani t)
(setq hl-paren-colors '("#000000"))
(setq hl-paren-background-colors '("#B376D2"))


; Buffer control
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-x") 'kill-region)
(global-set-key (kbd "C-c") 'kill-ring-save)
(global-set-key (kbd "C-v") 'yank)
