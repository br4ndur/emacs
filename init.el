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

;;(require 'cfg-org)
(require 'cfg-c-cpp)

(require 'epa-file)
(epa-file-enable)
(require 'cfg-gnus)


;;(setq org-capture-templates
;;      '(("t" "Todo" entry (file+headline "~/documents/todo.org" "Tode:")
;;         "* TODO %?\n %i\n %a")
;;        ("m" "Todo mark" entry (file+headline "~/documents/todo.org" "Tode:")
;;         "* TODO %?\n  %i\n %a")
;;        ("j" "Journal" entry (file+datetree "~/documents/todo.org")
;;             "* %?\nEntered on %U\n  %i\n  %a")))


(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/documents/todo.org" "TASKS:")
         "* TODO %?\n %i\n %a")))

(global-set-key (kbd "C-c c") 'org-capture)

;; adviced to turn this on, org-babel thingy, created by CD.
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

;; use aspell
(setq-default ispell-program-name "aspell")

;; load org-mode
(add-to-list 'load-path (concat emacs-dir "submodule/org-mode/lisp"))
(org-babel-do-load-languages
  'org-babel-load-languages
  '((sh, true) (python,true) (C, true) (latex, true))
)
;; load minimap
(add-to-list 'load-path (concat emacs-dir "submodule/minimap"))
(require 'minimap)

(add-to-list 'load-path (concat emacs-dir "snippets"))
(add-to-list 'load-path (concat emacs-dir "elpa/yasnippet-20131031.628"))
(require 'yasnippet) ;; not yasnippet-bundle
(yas-global-mode 1)

;;less-css-mode
(setq less-css-compile-at-save nil)

;; Server
(load "server")
(unless (server-running-p) (server-start))

;; Print init time
(message "init took %d seconds." (time-to-seconds (time-since emacs-load-start-time)))
;;; init.el end
(custom-set-variables

 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(send-mail-function (quote smtpmail-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
