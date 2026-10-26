;;-*- lexical-binding: t;
;;o-*-

;; Startup

(set-frame-font "Iosevka-14" nil t)
(setq inhibit-startup-screen t)

(add-to-list 'initial-frame-alist '(width . 160))
(add-to-list 'initial-frame-alist '(height . 35))
(tool-bar-mode -1)
(evil-mode 1)
(electric-pair-mode 1)
(ido-mode 1)
(ido-everywhere 1)


(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq c-set-style "k&r")
(setq c-basic-offset 4)

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(global-set-key [mouse-8] #'previous-buffer)
(global-set-key [mouse-9] #'next-buffer)

;; Stop emacs from scattering backup files all around
(let ((backup-dir (expand-file-name "backups/" user-emacs-directory))
      (autosave-dir (expand-file-name "auto-saves/" user-emacs-directory)))
  (make-directory backup-dir t)
  (make-directory autosave-dir t)
  (setq backup-directory-alist `(("." . ,backup-dir))
        auto-save-file-name-transforms `((".*" ,autosave-dir t))
        auto-save-list-file-prefix (expand-file-name "sessions/" autosave-dir)))

(setq create-lockfiles nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
