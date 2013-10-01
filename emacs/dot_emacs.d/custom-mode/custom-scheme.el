;; http://community.schemewiki.org/?emacs-tutorial
;;; Always do syntax highlighting
(global-font-lock-mode 1)

;;; Also highlight parens
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

;;; This is the binary name of my scheme implementation
(setq scheme-program-name "/usr/local/bin/csi")

(setq auto-mode-alist (cons '("\\.rkt$" . scheme-mode) auto-mode-alist))

; QUACK
;; wget http://www.neilvandyke.org/quack/quack.el
(require 'quack)
