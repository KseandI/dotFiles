					; Emacs global settings

(save-place-local-mode)
(menu-bar-mode -1)
(tool-bar-mode -1)

(setq show-paren-style 'expression)
(show-paren-mode 2)

(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)


					; Ido

(if (provide 'ido)
    (progn
     (message "Ido loaded")
     (ido-mode t)
     (setq ido-enable-flex-matching t)
     (global-set-key (kbd "M-o") 'ido-find-file)
     )
  (progn
   (message "Can't load ido")
   (global-set-key (kbd "M-o") 'find-file)
   )
  )

					; Bs

(if (provide 'bs)
    (progn
      (message "Bs loaded")
      (setq bs-configurations
	    '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))
      (global-set-key (kbd "M-b") 'bs-show)
      )
  (progn
    (message "Can't load bs")
    )
  )


					; Theme

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(if (load-theme `weyland-yutani t)
    (message "Theme loaded")
  (message "Can't load theme")
  )
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
  (end-of-line)
  )
(defun new-line-down ()
  (interactive)
  (next-line)
  (beginning-of-line)
  (insert "\n")
  (previous-line)
  (indent-according-to-mode)
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
(global-set-key (kbd "M-q") 'kill-emacs)
(global-set-key (kbd "C-o") 'new-line-down)


(add-to-list 'load-path "~/.emacs.d/lisp/")

					; Linum

(if (provide 'linum+)
    (progn
      (message "Linum loaded")
      (global-linum-mode 1)
      (setq linum-format "%4d ")
      )
  (message "Can't load linum")
  )


(if (provide 'igor-cpp)
    (message "cpp modules loaded")
  (message "Can't load cpp modules")
  )
