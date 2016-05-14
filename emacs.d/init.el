;; packages
(require 'package)
(package-initialize)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

;; hide emacs toolbar
(tool-bar-mode -1)

;; clojure
(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode))
(unless (package-installed-p 'cider)
  (package-install 'cider))
(unless (package-installed-p 'paredit)
  (package-install 'paredit))

(add-hook 'clojure-mode-hook #'paredit-mode)

;; ruby
(unless (package-installed-p 'robe)
  (package-install 'robe))
(unless (package-installed-p 'enh-ruby-mode)
  (package-install 'enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook 'robe-mode)

;; git
(unless (package-installed-p 'magit)
  (package-install 'magit))
 
