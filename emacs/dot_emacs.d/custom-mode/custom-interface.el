; FONT
(set-face-attribute 'default nil :height 160)

; Line number
(add-hook 'find-file-hook (lambda () (linum-mode 1)))

 ;; pretty-mode
(require 'pretty-mode)
(global-pretty-mode 1)

; KEYS
(normal-erase-is-backspace-mode 1)
(delete-selection-mode t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

; THEMES
(require 'color-theme)
(color-theme-initialize)
;;(load "~/.emacs.d/color-theme-sunburst.el")
;;(color-theme-deep-blue)
;;(color-theme-arjen) ;; dark
;;(color-theme-bharadwaj) ;; clear
;;(color-theme-billw) ;; dark
;;(color-theme-black) 
;;(color-theme-charcoal-black)
(color-theme-clarity) ;; dark ***
;;;(color-theme-hober) ;; dark **1/2
;;;(color-theme-classic) ;; blue-green ***
;;;(color-theme-gray30) ;; ubuntu like **1/2
;;(color-theme-vim-colors) ;; light
;;(color-theme-subtle-hacker) ;; blue-green **1/2
;(color-theme-gtk-ide) ;; ***
(load "~/.emacs.d/color-theme-sunburst.el")
;;(color-theme-sunburst) ;; dark ****

; FILE
(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(setq default-tab-width 4)
(setq tab-width 4)

(defun my-html-mode-hook ()
  (set-face-attribute 'default nil :height 140)
  (define-key html-mode-map (kbd "C->") 'sgml-close-tag))

(add-hook 'html-mode-hook 'my-html-mode-hook)

(defun hacker-mode ()
  (color-theme-sunburst))

(add-hook 'hacker-mode 'hacker-mode)
