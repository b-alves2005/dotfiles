(setq custom-file "~/.emacs.custom.el")

(add-to-list 'default-frame-alist'(font . "ComicShannsMono Nerd Font-18"))


(cua-mode 1)
(electric-pair-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(ido-mode 1)
(ido-everywhere 1)
(fido-mode 1)

(define-key key-translation-map (kbd "ESC") (kbd "C-g"))
(global-set-key (kbd "C-S-z") 'undo-redo)

(setq create-lockfiles nil)
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups/"))))
(setq auto-save-file-name-transforms `((".*" ,(concat user-emacs-directory "auto-saves/") t)))

(add-to-list 'default-frame-alist '(alpha-background . 100))

(load-file "~/.emacs.local/simpc-mode.el")
(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))
(add-to-list 'auto-mode-alist '("\\.[b]\\'" . simpc-mode))

(require 'multiple-cursors)
(global-set-key (kbd "C-6") 'mc/mark-next-like-this)
(global-set-key (kbd "C-7") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-8") 'mc/mark-all-like-this)

(load-file "~/.emacs.local/duplicate-line.el")
(global-set-key (kbd "C-,") 'duplicate-line)

(load-file "~/.emacs.local/move-line.el")
(global-set-key [(meta up)]  'move-line-up)
(global-set-key [(meta down)]  'move-line-down)

;; Enable Evil
;;(require 'evil)
;;(evil-mode 1)
;;(require 'doom-modeline)
;;(doom-modeline-mode 1)


(load-file custom-file)
