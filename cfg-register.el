;;; cfg-register.el

(dolist (r `((?i (file . ,(concat emacs-dir "init.el")))
             (?e (file . ,(concat emacs-dir "cfg-env.el")))
             (?b (file . ,(concat emacs-dir "cfg-binding.el")))
             (?r (file . ,(concat emacs-dir "cfg-register.el")))))
  (set-register (car r) (cadr r)))

(provide 'cfg-register)
;;; cfg-register.el end
