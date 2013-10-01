; Autopair http://code.google.com/p/autopair/
;;(add-to-list 'load-path "~/.emacs.d/plugins/autopair") ;; comment if autopair.el is in standard
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers 

(add-hook 'sldb-mode-hook #'(lambda () (setq autopair-dont-activate t)))
