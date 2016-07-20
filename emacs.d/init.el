;; packages
(require 'package)
(package-initialize)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

;; personal preferences
(tool-bar-mode -1)
(global-linum-mode t)
(set-keyboard-coding-system 'utf-8)
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; unbind right-alt so I can use spanish keys (aquaemacs)
(setq ns-right-alternate-modifier nil)
(add-to-list 'exec-path "/usr/local/bin")

;; workflow
(global-set-key [(meta p)] 'find-file-in-project-by-selected)
(add-hook 'before-save-hook 'whitespace-cleanup)

;; search project files
(unless (package-installed-p 'find-file-in-project)
  (package-install 'find-file-in-project))
(setq ffip-match-path-instead-of-filename t)


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
(unless (package-installed-p 'enh-ruby-mode)
  (package-install 'enh-ruby-mode))

(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
(add-hook 'enh-ruby-mode-hook 'robe-mode)

;; git
(unless (package-installed-p 'magit)
  (package-install 'magit))
