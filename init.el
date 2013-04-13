;; init.el --- begin
(setq user-full-name "Brandur Øssursson"
      user-mail-address "branduren@gmail.com")

(setq debug-on-error t)

;; Print start, and start clock
(message "--[ Loading my Emacs init file ]--") (setq emacs-load-start-time (current-time))

;; Disable Gui
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; set emacs-dir to current directory
(setq emacs-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

;; load current directory
(add-to-list 'load-path emacs-dir)

(require 'cfg-env)

;; Print init time
(message "Emacs startup time: %.3f seconds."  (/ (string-to-number (format-time-string "%3N" (time-since emacs-load-start-time))) 1000))

;;; init.el end