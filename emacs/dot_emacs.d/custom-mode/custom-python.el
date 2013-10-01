(add-hook 'python-mode-hook '(lambda () 
                               (define-key python-mode-map "\C-m" 'newline-and-indent)))

;;; python
;;(setq py-install-directory "~/.emacs.d/modes")
(setq py-load-pymacs-p 'nil)

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")



;;(require 'python-mode)

(require 'pysmell)
(add-hook 'python-mode-hook (lambda () (pysmell-mode 1)))

(setq py-shell-name "ipython")

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;;; bind RET to py-newline-and-indent
(add-hook 'python-mode-hook '(lambda () 
     (define-key python-mode-map "\C-m" 'newline-and-indent)))

(add-hook 'python-mode-hook (lambda () (pysmell-mode 1)))
