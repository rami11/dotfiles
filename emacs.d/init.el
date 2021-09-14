(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(setq-default mac-command-modifier 'meta
	      delete-by-moving-to-trash t
	      trash-directory "~/.Trash"
	      make-backup-files nil
	      ring-bell-function 'ignore)

(add-hook 'prog-mode-hook 'linum-mode)

(blink-cursor-mode 0)
(show-paren-mode)

;;(projectile-mode +1)
;;(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;;(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wheatgrass)))
 '(package-selected-packages
   (quote
    (kotlin-mode treemacs angular-mode react-snippets yasnippet projectile cider magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (add-to-list 'load-path "~/vanilla-emacs/elpa/react-snippets-20181002.1046/react-snippets.el")
