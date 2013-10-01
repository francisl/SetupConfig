;; slime
;; cd ~/.emacs.d
;; git clone git://github.com/nablaone/slime.git

(eval-after-load "slime" 
  '(progn (slime-setup '(slime-repl))))

(add-to-list 'load-path "~/.emacs.d/plugins/slime/")  ; your SLIME directory

(defun my-ecl-slime-mode (&optional n)
  (interactive "p")
  (self-insert-command (or n 1))
  (setq inferior-lisp-program "~/opt/bin/ecl")
  (message "slime is set to use ecl")) ; your Lisp system

(add-hook 'ecl-slime-mode (lambda () (my-ecl-slime-mode)))

(require 'slime)
(slime-setup)
(setq inferior-lisp-program "~/opt/bin/ecl")


;; require quicklisp
;; to install (ql:quickload "quicklisp-slime-helper")
(load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
  (setq inferior-lisp-program "ecl")
