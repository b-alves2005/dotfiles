(setq custom-file "~/.emacs.custom.el")

(add-to-list 'default-frame-alist'(font . "IosevkaNerdFont-18"))

(electric-pair-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(ido-mode 1)
(ido-everywhere 1)
(fido-mode 1)

(add-to-list 'default-frame-alist '(alpha-background . 85))

(load-file "~/.emacs.local/simpc-mode.el")

(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))
(add-to-list 'auto-mode-alist '("\\.[b]\\'" . simpc-mode))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

(load-file custom-file)
