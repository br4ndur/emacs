;; cfg-env.el

(when window-system
  (blink-cursor-mode -1))

;;Do not show startup-message 
(setq inhibit-startup-message t)

;;Load color theme
(load-theme 'tango-dark t)

;;enable ido mode
(ido-mode t)

;;display tab and newline
(global-whitespace-mode 1)
(setq whitespace-display-mappings
  '(
    (newline-mark 10 [9166 10]) ; newlne
    (tab-mark 9 [8680 9] [92 9]) ; tab
   )
)

(provide 'cfg-env)
;; cfg-env.el
