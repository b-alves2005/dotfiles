;;-*- lexical-binding: t;
;;o-*-

;; Startup
(add-to-list 'initial-frame-alist '(width . 160))
(add-to-list 'initial-frame-alist '(height . 35))
(tool-bar-mode -1)

;;(speedbar-window)
(setq speedbar-window-side 'right
      speedbar-window-default-width 20
      speedbar-window-max-width 20)


;; Quality of Life
(cua-mode 1)

(global-set-key (kbd "C-S-z") #'undo-redo)

(electric-pair-mode 1)

(ido-mode 1)
(ido-everywhere 1)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

(setq-default indent-tabs-mode nil
              tab-width 4
              standard-indent 4)

(add-hook 'c++-mode-hook
          (lambda ()
            (setq-local c-basic-offset 4
                        indent-tabs-mode nil)))


(setq backward-delete-char-untabify-method 'hungry)
(global-set-key (kbd "DEL") #'backward-delete-char-untabify)
(global-set-key (kbd "<backspace>") #'backward-delete-char-untabify)

;; Custom binds
(global-set-key [mouse-8] #'previous-buffer)
(global-set-key [mouse-9] #'next-buffer)
(global-set-key (kbd "C-a") #'beginning-of-line-text)
(global-set-key (kbd "C-e") #'end-of-line)

(defun my-paragraph-first-character ()
  (interactive)
  (backward-paragraph)
  (skip-chars-forward " \t\n"))

(defun my-paragraph-last-character ()
  (interactive)
  (forward-paragraph)
  (skip-chars-backward " \t\n"))

(keymap-global-set "M-<up>" #'my-paragraph-first-character)
(keymap-global-set "M-<down>" #'my-paragraph-last-character)


;; Stop emacs from scattering backup files all around
(let ((backup-dir (expand-file-name "backups/" user-emacs-directory))
      (autosave-dir (expand-file-name "auto-saves/" user-emacs-directory)))
  (make-directory backup-dir t)
  (make-directory autosave-dir t)
  (setq backup-directory-alist `(("." . ,backup-dir))
        auto-save-file-name-transforms `((".*" ,autosave-dir t))
        auto-save-list-file-prefix (expand-file-name "sessions/" autosave-dir)))

(setq create-lockfiles nil)

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Change inner
(require 'change-inner)
(global-set-key (kbd "M-i") 'change-inner)
(global-set-key (kbd "M-o") 'change-outer)

;; Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-6") 'mc/mark-next-like-this)
(global-set-key (kbd "C-7") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-8") 'mc/mark-all-like-this)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(change-inner multiple-cursors)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
