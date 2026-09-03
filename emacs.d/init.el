;;-*- lexical-binding: t;
;;o-*-
(load-theme 'ef-spring t)

(set-frame-font "CommitMono-16" nil t)

(desktop-save-mode 1)

(tool-bar-mode -1)
(scroll-bar-mode 0)
(setopt delete-selection-mode t)
(setq pixel-scroll-mode t)
(setopt font-use-system-font t)
(setq-default display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)

(global-tab-line-mode -1)
(tab-bar-mode 1)
(setq tab-bar-show t) 
;;(setopt tab-bar-show 0)
(setopt tab-bar-history-mode t)
(setopt dired-auto-revert-buffer t)

;; Save all backup and auto-save files in one temporary directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name "backups" user-emacs-directory))))

(setq create-lockfiles nil)

(ido-mode 1)
(ido-everywhere 1)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(require 'multiple-cursors)
(global-set-key (kbd "C-6") 'mc/mark-next-like-this)
(global-set-key (kbd "C-7") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-8") 'mc/mark-all-like-this)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("218c71361fdada068c64beb05005cfd646981a0a9b583f93cb904b01daf9471c"
     "374ba7157893123caaf89df302153ce57c16e4ad4b51f127b9306b80560a6a2d"
     "5e2b82d4d3c794cdc1d46fe2a6ca54efed4df7caaefa3e80d6f566a9a24bc881"
     "c86afcadf967c053174feaeac0a87c261fea5d255625357314352621149fb210"
     "acd363510d3e4b638db178783bde3d4492574c0f5c889f845251949f43567d16"
     "eeaa104f99d641c8be210d3555eba029756d5dc7a2f9a342af526045c3a82c60"
     "05f1ee9db2c66cd715ab6d36ff949386c47dfff91a7df1f203d015b3ea304dbb"
     "1d18bef9d0e1b7f30a3290c48fdc52465bdca62564e404c1019bb1fcc8cb0c27"
     "fa84f9bf6fb531d42662e21ff48a9a918b4170dcde8a4aadd4f63a4cfd9c90e4"
     "db6ab2c48595ea6c8914cac1288181e80aae3815ab2769f069640f0d62008bf0"
     "7f78a102dd0dd5a5d9095ee4dabe06ea921c6af8c4ea7f8946899342c6ea8e1d"
     "69e0e45c0bb84494a7da129106b12229a03b2628a91432a71c2b68f95282ef16"
     default))
 '(package-selected-packages '(ef-themes gruvbox-theme multiple-cursors)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
