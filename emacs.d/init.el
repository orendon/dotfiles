;; packages
(require 'package)
(package-initialize)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; personal preferences
(tool-bar-mode -1)
(global-linum-mode -1)
(set-keyboard-coding-system 'utf-8)
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(prefer-coding-system 'utf-8)
(blink-cursor-mode t)
(show-paren-mode 1)
(setq-default indent-tabs-mode nil) ;; no tabs
(defalias 'yes-or-no-p 'y-or-n-p)

;; unbind right-alt so I can use spanish keys (aquaemacs)
(setq ns-right-alternate-modifier nil)

;; font and theme
(setq mac-allow-anti-aliasing t)
;(set-default-font "Inconsolata")
(set-face-attribute 'default nil :height 160)
(load-theme 'wombat)
;(load-theme 'tango-dark)
;(load-theme 'adwaita)

;; workflow
(add-to-list 'exec-path "/usr/local/bin")
(global-set-key [(meta p)] 'find-file-in-project-by-selected)
(add-hook 'before-save-hook 'whitespace-cleanup)
(global-set-key (kbd "C-x g") 'magit-status)

;; Syntax Checking
(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))
(global-flycheck-mode)

;; search project files
(unless (package-installed-p 'find-file-in-project)
  (package-install 'find-file-in-project))
(setq ffip-match-path-instead-of-filename t)

;; Snippets (non shell mode)
(unless (package-installed-p 'yasnippet-snippets)
  (package-install 'yasnippet-snippets))
;(require 'yasnippet)
;(yas-global-mode 1)

;; clojure
(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode))
(unless (package-installed-p 'cider)
  (package-install 'cider))
(unless (package-installed-p 'paredit)
  (package-install 'paredit))
(unless (package-installed-p 'rainbow-delimiters)
  (package-install 'rainbow-delimiters))

(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

;; ruby
(unless (package-installed-p 'robe)
  (package-install 'robe))
(add-hook 'ruby-mode-hook 'robe-mode)

;; git
(unless (package-installed-p 'magit)
  (package-install 'magit))

;; erlang
(setq load-path (cons "/usr/local/lib/erlang/lib/tools-3.0.2/emacs/" load-path))
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
(setq erlang-man-root-dir "/usr/local/lib/erlang/man")
;; (defvar inferior-erlang-prompt-timeout t)
(require 'erlang-start)
(require 'erlang-eunit)
(require 'erlang-flymake)
;; erlang-distel
;; (add-to-list 'load-path "~/.emacs.d/distel/elisp")
;; (require 'distel)
;; (distel-setup)

;; golang
(unless (package-installed-p 'go-mode)
  (package-install 'go-mode))
(add-hook 'before-save-hook 'gofmt-before-save)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yasnippet-snippets flycheck coffee-mode robe rainbow-delimiters paredit magit go-mode find-file-in-project enh-ruby-mode cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; C++
(unless (package-installed-p 'modern-cpp-font-lock)
  (package-install 'modern-cpp-font-lock))
(add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)
(setq flycheck-gcc-language-standard "c++17")
