;; cfg-env.el

(when window-system
  (blink-cursor-mode -1))

;; use utf-8
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; do not show startup-message
(setq inhibit-startup-message t)

;; load color theme
(load-theme 'tango-dark t)

;; enable ido mode
(ido-mode t)

;; use y n instead of yes no
(defalias 'yes-or-no-p 'y-or-n-p)

;; do not clutter directories with backup files
(setq backup-directory-alist `(("." . ,(expand-file-name
                                        (concat emacs-dir "backups")))))

;; find recent files
(recentf-mode 1)
(setq recentf-max-menu-items 25)

;; highlight matching parentheses with point
(show-paren-mode 1)

;; delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; lets use 80 characters per line
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook
  '(lambda() (set-fill-column 80)))


;; whitespace on
(global-whitespace-mode 1)
;; do not higlight first whitespace
(setq whitespace-style '(trailing tabs newline tab-mark newline-mark))
;; show tab and endline
(setq whitespace-display-mappings
  '(
    (newline-mark 10 [9166 10]) ; newlne
    (tab-mark 9 [8680 9] [92 9]) ; tab
   )
)

(provide 'cfg-env)
;; cfg-env.el
