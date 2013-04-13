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

;; blinking cursor off
(blink-cursor-mode (- (*) (*) (*)))

;; Print init time
(message "Emacs startup time: %d seconds." (time-to-seconds (time-since emacs-load-start-time)))

;;; init.el end
