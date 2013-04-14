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


(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; load current directory
(add-to-list 'load-path emacs-dir)

;;Load common files
(require 'cl)        ;; apparantly used many places
(require 'recentf)   ;; find recent file with ease

;;Load common user files
(require 'cfg-register)
(require 'cfg-env)
(require 'cfg-brandurenfunc)
(require 'cfg-binding)

;; Print init time
(message "Emacs startup time: %.3f seconds."  (/ (string-to-number (format-time-string "%3N" (time-since emacs-load-start-time))) 1000))

;;; init.el end
