;; Hi

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tangonov))
 '(custom-safe-themes
   '("a45c79f9597eff562cc6e5ebee5209511e2a976ed631c186032db075ce645e40"
     default))
 '(display-line-numbers 'relative)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(package-selected-packages '(doom-modeline evil tangonov-theme))
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
