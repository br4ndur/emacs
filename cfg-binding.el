;;; cfg-binding.el begin

;; Complete with hippie
(global-set-key (kbd "C-i") 'hippie-expand)

;; use ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Window switching. (C-x o, C-x O)
(global-set-key (kbd "C-x O") (lambda () (interactive) (other-window -1)))

;; Start a new eshell even if one is active.
(global-set-key (kbd "C-x m") (lambda () (interactive) (eshell t)))

;; Same as shell, and keep fingers on the home row
(global-set-key (kbd "C-h") 'backward-delete-char)

;; Help
(global-set-key "\M-h" 'help)

(provide 'cfg-binding)
;;; cfg-binding.el end
