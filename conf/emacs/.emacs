;; ---------------------------------------
;; -            BASIC	                -
;;----------------------------------------

(menu-bar-mode -1)
(tool-bar-mode -1)

;; Indentation avec tab
(setq-default font-lock-global-modes t)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)

;; mettre 4 espaces et plus a chaque indentation
(setq-default c-basic-offset 4)
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
				64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

;; ---------------------------------------
;; -            LIB & PATH	         -
;;----------------------------------------

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; ajout du dépôt "melpa"/"marmalade"
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; IDO
(require 'ido)
(setq ido-enable-flex-matching t) ;; activer le fuzzy matching pour trier les résultats
(setq ido-everywhere t) ;; activer ido pour find-files et les buffers
  (ido-mode 1) ;; activer ido

;; AUTO COMPLETE
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-sources 'ac-source-yasnippet) ;; Let's have snippets in the auto-complete dropdown

;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(require 'smex) ; Not needed if you use package.el
(smex-initialize)
(global-set-key "\M-x" 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; ---------------------------------------
;; -            THEMES			         -
;;----------------------------------------

(load-theme 'monokai t)

;; ---------------------------------------
;; -            AFFICHAGE		         -
;;----------------------------------------

;; Surligne la zone entre parentheses
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match "#464646")

;; Affiche les lignes et colonnes dans la barre de gauche
(global-linum-mode 1)
(global-set-key (kbd "C-x l") 'linum-mode)
(setq linum-format "%3d \u2502")
(linum-on)


;; Colorise en Rouge les espace en fin de ligne
(setq show-trailing-whitespace t)
(setq-default show-trailing-whitespace t)


;; Affiche l'heure dans la barre du bas
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)
(setq european-calendar-style t)


; Surlignage d'une région sélectionnée
(transient-mark-mode t)


;; Montre les parenthèses
(show-paren-mode 1)
;; ---------------------------------------
;; -            KEY		         -
;;----------------------------------------

;; Indentation avec tab
(setq-default font-lock-global-modes t)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)


(global-set-key [f7] 'linum-relative-mode)
;; ---------------------------------------
;; -            SOURIS	                -
;;----------------------------------------

;; Autorise la sourie
(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] '(lambda ()
							   (interactive)
							   (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
							   (interactive)
							   (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
  )

;; Le curseur reste toujours à la même position quand on scroll
(setq scroll-preserve-screen-position t)

;; ---------------------------------------
;; -            ORG MODE                -
;;----------------------------------------

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)


(setq org-agenda-files (list "~/org/work.org"
							 "~/org/home.org"))
;; ---------------------------------------
;; -            DIVERS	                -
;;----------------------------------------

;; La langue du dictionnaire
(setq ispell-dictionary "francais")

;; Enleve automatiquement les espaces en fin de ligne des qu'on sauvegarde
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(put 'scroll-left 'disabled nil)

(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
  (global-set-key [f8] 'neotree-toggle)
