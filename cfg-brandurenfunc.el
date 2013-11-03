;; cfg-brandurenfunc.el

;; from: http://tuxicity.se/emacs/elisp/2010/11/16/delete-file-and-buffer-in-emacs.html
(defun branduren-delete-this-buffer-and-file ()
  "Removes file connected to current buffer and kills buffer."
  (interactive)
  (let ((filename (buffer-file-name))
        (buffer (current-buffer))
        (name (buffer-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (when (yes-or-no-p "Are you sure you want to remove this file? ")
        (delete-file filename)
        (kill-buffer buffer)
        (message "File '%s' successfully removed" filename)))))

(defun branduren-delete-region (&optional arg)
      (interactive "p")
      (if (region-active-p)
        (delete-region (region-beginning) (region-end))
        (delete-char arg)))

(defun branduren-run-out ()
  "Launch a shell command."
  (interactive)
  (let ((file (file-name-sans-extension (buffer-file-name))))
    (shell-command (concat file ".out"))))

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

(defun branduren/minimap-toggle ()
  "Toggle minimap for current buffer."
  (interactive)
  (if (null minimap-bufname)
      (minimap-create)
    (minimap-kill)))


(provide 'cfg-brandurenfunc)
;; cfg-brandurenfunc.el
