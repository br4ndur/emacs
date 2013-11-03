;;; cfg-binding.el begin


;;delete file n buffer
(global-set-key (kbd "C-c k") 'branduren-delete-this-buffer-and-file)

;; complete with hippie
;;(global-set-key (kbd "C-i") 'hippie-expand)
;;(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-t") 'hippie-expand)

(global-set-key (kbd "C-M-g") 'org-plot/gnuplot)

;; Find buffer and files
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x f") 'branduren-recentf-ido-find-file)

;; window switching. (C-x o, C-x O)
(global-set-key (kbd "C-x O") (lambda () (interactive) (other-window -1)))

;; start a new eshell even if one is active.
(global-set-key (kbd "C-x m") (lambda () (interactive) (eshell t)))

;; delete with ease
(global-set-key (kbd "C-h") 'backward-delete-char)
(global-set-key (kbd "C-d") 'branduren-delete-region )
(global-set-key (kbd "C-w") 'branduren-bck-kill-word-or-kill-region)

;; so brilliant
(global-set-key (kbd "C-x g") 'magit-status)

;; help
(global-set-key "\M-h" 'help)

;; toggle-minimap
(global-set-key (kbd "C-c m") 'branduren/minimap-toggle)

;;C programming - goto error
(global-set-key (kbd "C-c n") 'next-error)

(provide 'cfg-binding)
;;; cfg-binding.el end
