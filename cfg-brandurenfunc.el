;; cfg-brandurenfunc.el
(defun branduren-delete-region (&optional arg)
      (interactive "p")
      (if (region-active-p)
        (delete-region (region-beginning) (region-end))
        (delete-char arg)))

;; kill no region
(defun branduren-bck-kill-word-or-kill-region (&optional arg)
  (interactive "p")
  (if (region-active-p)
    (kill-region (region-beginning) (region-end))
    (backward-kill-word arg)))

(provide 'cfg-brandurenfunc)
;; cfg-brandurenfunc.el
