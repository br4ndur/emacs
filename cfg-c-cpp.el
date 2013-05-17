;;; cfg-cpp.el --- C++ config

;;compiler c-mode
(add-hook 'c-mode-hook
	  (lambda ()
	    (unless (file-exists-p "Makefile")
	      (set (make-local-variable 'compile-command)
		   (let ((file (file-name-nondirectory buffer-file-name)))
		     (concat "gcc -g -O2 -Wall -o "
			     (file-name-sans-extension file)
			     ".out " file))))
	    (local-set-key (kbd "C-x c") 'compile)))


;;compiler c++-mode
(add-hook 'c++-mode-hook
	  (lambda ()
	    (unless (file-exists-p "Makefile")
	      (set (make-local-variable 'compile-command)
		   (let ((file (file-name-nondirectory buffer-file-name)))
		     (concat "g++ -g -O2 -Wall -o "
			     (file-name-sans-extension file)
			     " " file))))
	    (local-set-key (kbd "C-x c") 'compile)))

(provide 'cfg-c-cpp)
;;; cpp.el ends here
