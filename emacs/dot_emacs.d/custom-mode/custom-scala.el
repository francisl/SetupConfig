(add-to-list 'load-path "~/.emacs.d/mode/scala-mode")

(require 'scala-mode-auto)

;; svn co http://lampsvn.epfl.ch/svn-repos/scala/scala-tool-support/trunk/src/emacs/ scala-mode

(add-hook 'scala-mode-hook
          '(lambda ()
             (yas/minor-mode-on)))

(setq yas/my-directory "~/.emacs.d/mode/scala-mode/contrib/yasnippet/snippets")
(yas/load-directory yas/my-directory)
