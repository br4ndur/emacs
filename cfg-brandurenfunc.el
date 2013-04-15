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

;; ido recentfile
(defun branduren-recentf-ido-find-file ()
  "Find a recent file using Ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))


   (defun how-many-region (begin end regexp &optional interactive)
      "Print number of non-trivial matches for REGEXP in region.
    Non-interactive arguments are Begin End Regexp"
      (interactive "r\nsHow many matches for (regexp): \np")
      (let ((count 0) opoint)
        (save-excursion
          (setq end (or end (point-max)))
          (goto-char (or begin (point)))
          (while (and (< (setq opoint (point)) end)
                      (re-search-forward regexp end t))
            (if (= opoint (point))
                (forward-char 1)
              (setq count (1+ count))))
          (if interactive (message "%d occurrences" count))
          count)))


(defun branduren-set-indent-style ()
  ;; if our source file uses tabs, we use tabs, if spaces spaces, and if
  ;; neither, we use the current indent-tabs-mode
  (interactive)
  (let ((space-count (how-many-region (point-min) (point-max) "^  "))
        (tab-count (how-many-region (point-min) (point-max) "^\t")))
    (if (> tab-count space-count) (setq indent-tabs-mode t) (setq indent-tabs-mode nil))))

(defun branduren-set-indent-four ()
    (interactive)
    (setq c-basic-offset 4
          tab-width 4)
)

(provide 'cfg-brandurenfunc)
;; cfg-brandurenfunc.el
