(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")
(require 'yasnippet) ;; not yasnippet-bundle

(yas/initialize)
(setq yas/root-directory "~/.emacs.d/custom-mode/snippets")

(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets")

; https://github.com/myfreeweb/django-mode.git
(yas/load-directory "~/.emacs.d/modes/django-mode/snippets")
(yas/load-directory yas/root-directory)
