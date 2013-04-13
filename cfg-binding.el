;;; cfg-binding.el begin

;; complete with hippie
(global-set-key (kbd "C-i") 'hippie-expand)

;; use ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; window switching. (C-x o, C-x O)
(global-set-key (kbd "C-x O") (lambda () (interactive) (other-window -1)))

;; start a new eshell even if one is active.
(global-set-key (kbd "C-x m") (lambda () (interactive) (eshell t)))

;; same as shell, and keep fingers on the home row
(global-set-key (kbd "C-h") 'backward-delete-char)

;; so brilliant
(global-set-key (kbd "C-x g") 'magit-status)

;; help
(global-set-key "\M-h" 'help)

(provide 'cfg-binding)
;;; cfg-binding.el end
