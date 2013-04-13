;; cfg-brandurenfunc.el
(defun branduren-delete-region (&optional arg)
      (interactive "p")
      (if (region-active-p)
        (delete-region (region-beginning) (region-end))
        (delete-char arg)))

(provide 'cfg-brandurenfunc)
;; cfg-brandurenfunc.el
