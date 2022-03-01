;; Configuração básica do Emacs
(setq inhibit-startup-message t) ;; Desabilitando o buffer de boas vindas.

(tool-bar-mode   -1)                 ;; oculta a barra de ferramentas
(menu-bar-mode   -1)                 ;; oculta a barra de menu
(scroll-bar-mode -1)                 ;; oculta a barra de rolagem
(tooltip-mode    -1)                 ;; oculta dicas

(global-display-line-numbers-mode t) ;; exibe numeração de linhas
(column-number-mode t)               ;; exibe coluna atual na modeline
(global-hl-line-mode t)              ;; exibe destaque de linha


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
