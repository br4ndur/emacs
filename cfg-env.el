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

;; display tab and newline
(global-whitespace-mode 1)
(setq whitespace-display-mappings
  '(
    (newline-mark 10 [9166 10]) ; newlne
    (tab-mark 9 [8680 9] [92 9]) ; tab
   )
)

(provide 'cfg-env)
;; cfg-env.el
