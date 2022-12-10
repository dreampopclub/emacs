(setq inhibit-startup-message t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Line nums
(global-display-line-numbers-mode t)
(column-number-mode t)
(global-hl-line-mode t)

;;theme
(load-theme 'cyberpunk t)

(defun change-theme (theme)
  "Disable all active themes and load THEME."
  (interactive
   (lexical-let ((themes (mapcar 'symbol-name (custom-available-themes))))
		(list (intern (completing-read "Load custom theme: " themes)))))
  (mapc 'disable-theme custom-enabled-themes)
    (load-theme theme t))

;; without this projectile find dies.
(require 'subr-x)

(projectile-global-mode)

;; Save emacs backup in ~/emacs_backups
(setq backup-directory-alist '(("" . "~/emacs_backups")))

(desktop-save-mode 1)

(setq-default indent-tabs-mode nil)
(setq js-indent-level 2)
(setq css-indent-offset 2)

;; don't write # coding: utf-8 when saving ruby files.
(setq ruby-insert-encoding-magic-comment nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("7546a14373f1f2da6896830e7a73674ef274b3da313f8a2c4a79842e8a93953e" "e27556a94bd02099248b888555a6458d897e8a7919fd64278d1f1e8784448941" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "e3c64e88fec56f86b49dcdc5a831e96782baf14b09397d4057156b17062a8848" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "f4876796ef5ee9c82b125a096a590c9891cec31320569fc6ff602ff99ed73dca" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "d9646b131c4aa37f01f909fbdd5a9099389518eb68f25277ed19ba99adeb7279" "b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" default)))
 '(fci-rule-color "#383838")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (quote
    ("#98695021d64f" "#484f5a51ffff" "#9ae80000c352" "#00000000ffff" "#98695021d64f" "#9ae80000c352" "#484f5a51ffff")))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#5b7300" . 20)
     ("#007d76" . 30)
     ("#0061a8" . 50)
     ("#866300" . 60)
     ("#992700" . 70)
     ("#a00559" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#866300" "#992700" "#a7020a" "#a00559" "#243e9b" "#0061a8" "#007d76" "#5b7300")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(jdee-db-active-breakpoint-face-colors (cons "#f1ece4" "#7382a0"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#f1ece4" "#81895d"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#f1ece4" "#b9a992"))
 '(lsp-ui-doc-border "#93a1a1")
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#5b7300" "#b3c34d" "#0061a8" "#2aa198" "#d33682" "#6c71c4")))
 '(objed-cursor-color "#955f5f")
 '(package-selected-packages
   (quote
    (ruby-hash-syntax bundler ag jest flycheck jest-test-mode vue-mode js2-mode doom-themes projectile rubocop web-mode solarized-theme ruby-test-mode ruby-electric monokai-theme cyberpunk-theme better-defaults magit smex)))
 '(pdf-view-midnight-colors (cons "#605a52" "#f7f3ee"))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(rustic-ansi-faces
   ["#f7f3ee" "#955f5f" "#81895d" "#957f5f" "#7382a0" "#9c739c" "#5f8c7d" "#605a52"])
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#ffffa21b0000")
     (60 . "#ffffd2170000")
     (80 . "#b58900")
     (100 . "#ffffffff0001")
     (120 . "#ffffffff0001")
     (140 . "#ffffffff0001")
     (160 . "#ffffffff0001")
     (180 . "#859900")
     (200 . "#dc61ffb87bff")
     (220 . "#c516ffa89f16")
     (240 . "#a726ffabc017")
     (260 . "#7bfcffc6e036")
     (280 . "#2aa198")
     (300 . "#0000ffffffff")
     (320 . "#0000ffffffff")
     (340 . "#0000ffffffff")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#a7020a" "#dc322f" "#5b7300" "#859900" "#866300" "#b58900" "#0061a8" "#268bd2" "#a00559" "#d33682" "#007d76" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-removed ((t (:background "#3b2c2a" :foreground "white"))))
 '(magit-diff-removed-highlight ((t (:background "#51322f" :foreground "white" :weight bold)))))