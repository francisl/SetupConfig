;; clojure-mode
;; cd ~/.emacs.d
;; git clone git://github.com/technomancy/clojure-mode.git 
(add-to-list 'load-path "~/.emacs.d/modes/clojure-mode")
(require 'clojure-mode)

;; (add-to-list 'load-path "~/.emacs.d/plugins/")
;; (require 'paredit)
;; (defun turn-on-paredit () (paredit-mode 1))
;; (add-hook 'clojure-mode-hook 'turn-on-paredit)

(defun clojure-slime-mode ()
  (setq inferior-lisp-program "lein repl"))
