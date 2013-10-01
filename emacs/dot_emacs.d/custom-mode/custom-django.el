;; DJANGO mode
(require 'django-html-mode)
(require 'django-mode)
(yas/load-directory "~/.emacs.d/modes/django-mode/snippets")

(autoload 'django-html-mumamo-mode "~/.emacs.d/modes/nxhtml/autostart.el")
(setq auto-mode-alist
      (append '(("\\.html?$" . django-html-mumamo-mode)) auto-mode-alist))
(setq mumamo-background-colors nil) 
(add-to-list 'auto-mode-alist '("\\.html$" . django-html-mumamo-mode))
