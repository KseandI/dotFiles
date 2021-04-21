(add-to-list 'load-path "~/.emacs.d/lisp/")
;(require 'xah-html-mode)
;(require 'xah-elisp-mode)
;(require 'xah-css-mode)


					; Rust

(require 'rust-mode)


					; Linum

(require 'linum+)
(global-linum-mode 1)
(setq linum-format "%4d ")


					; Emacs global settings

(save-place-local-mode)
(menu-bar-mode -1)
(tool-bar-mode -1)

(setq show-paren-style 'expression)
(show-paren-mode 2)

(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)

(add-to-list 'default-frame-alist '(font . "Liberation Mono" ))
(set-face-attribute 'default t :font "Liberation Mono" :height 80)

					; Ido

(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)


					; Bs

(require 'bs)
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))
(global-set-key (kbd "M-b") 'bs-show)


					; Theme

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme `weyland-yutani t)
(setq hl-paren-colors '("#000000"))
(setq hl-paren-background-colors '("#B376D2"))



					; Buffer control

(defun kill-line-save ()
  (interactive)
  (setq a (point))
  (beginning-of-line)
  (kill-line)
  (yank)
  (goto-char a)
  )
(defun duplicate-line-down ()
  (interactive)
  (kill-line-save)
  (next-line)
  (beginning-of-line)
  (yank)
  (insert "\n")
  (previous-line)
  )

(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-x") 'kill-region)
(global-set-key (kbd "C-c") 'kill-ring-save)
(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-d") 'duplicate-line-down)
(global-set-key (kbd "C-l") 'forward-char)
(global-set-key (kbd "C-h") 'backward-char)
(global-set-key (kbd "C-j") 'next-line)
(global-set-key (kbd "C-k") 'previous-line)


					;Window control

(global-set-key (kbd "C-v") 'yank)
