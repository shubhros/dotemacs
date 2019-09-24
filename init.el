(require 'package)
;;; either the stable version:

(add-to-list 'package-archives
  ;; choose either the stable or the latest git version:
  '("melpa-stable" . "http://stable.melpa.org/packages/"))

(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("96bfc952ae7c93984085406c44d9ec3b98784a9de445d35958588ac9e303af1d" "b46ee2c193e350d07529fcd50948ca54ad3b38446dcbd9b28d0378792db5c088" default)))
 '(package-selected-packages
   (quote
    (srcery-theme dracula-theme rainbow-delimiters paredit-everywhere paredit helm geiser))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq geiser-chicken-binary "/usr/local/bin/csi")
(setq geiser-chez-binary "/usr/local/bin/chez")
(setq geiser-scheme-implementation "chez")
(require 'helm-config)
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'paredit-mode)
(global-set-key (kbd "M-x") 'helm-M-x)
(set-face-attribute 'default nil :height 130)
					;(set-frame-font  "-*-Iosevka -normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
(set-frame-font "-*-Iosevka-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
(load-theme 'dracula)
