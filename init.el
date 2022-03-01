;; Configuração básica do Emacs
(setq inhibit-startup-message t) ;; Desabilitando o buffer de boas vindas.

(tool-bar-mode   -1)                 ;; oculta a barra de ferramentas
(menu-bar-mode   -1)                 ;; oculta a barra de menu
(scroll-bar-mode -1)                 ;; oculta a barra de rolagem
(tooltip-mode    -1)                 ;; oculta dicas

(global-display-line-numbers-mode t) ;; exibe numeração de linhas
(column-number-mode t)               ;; exibe coluna atual na modeline
(global-hl-line-mode t)              ;; exibe destaque de linha

;; Pacotes
(require 'package)
(setq package-enable-at-startup nil) ;; desabilitar inicio de ativacao e pacotes


;;MELPA -- repositório
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize) ;; iniciar pacotes

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

(use-package all-the-icons
  :ensure t)

(use-package neotree
  :ensure t
  :config
  (progn
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
  :bind (("C-\\" . 'neotree-toggle))) ;; tecla atom

;; tema


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; alertas visuais
(setq visible-bell t)


;; espaçamento das bordas laterais
(set-fringe-mode 10)

;; Ajustes
(global-unset-key (kbd "C-z")) ;; desabilita o CTRL-Z (suspend frame)

;; Rolagem mais suave
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1)) ;; 2 linhas por vez
      mouse-wheel-progressive-speed nil            ;; Não acelera a rolagem
      mouse-wheel-follow-mouse 't                  ;; rola a janela sob o mouse
      scroll-step 1)                               ;; rola 1 linha com o teclado

;; Quebra de linha
(global-visual-line-mode t)

;; Organizando os backups

(setq backup-directory-alist `(("." . "~/.saves")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (molokai-theme auto-complete use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
