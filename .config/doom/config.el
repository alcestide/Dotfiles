;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;(setq doom-theme 'doom-ayu-dark)
(setq doom-theme 'doom-homage-black)
;(setq doom-theme 'tron-legacy)
;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Angelo Panariti"
      user-mail-address "angpanariti@gmail.com")

;; Doom exposes five (optional) variables f controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed . Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;(setq doom-theme 'doom-tokyo-night)
(setq doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 20)
      doom-variable-pitch-font (font-spec :family "JetBrainsMono Nerd Font" :size 20))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Git/Enkefalos")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;(setq fancy-splash-image "~/.config/doom/splash/lain1.png")
;(setq fancy-splash-image "~/.config/doom/splash/ah1.jpg")
(let ((alternatives '("ah1.jpg"
                      "ah2.png"
                      "ah3.jpg"
                      "ah4.jpeg"
                      "ah5.jpeg"
                      "ah6.jpg"
                      "ah7.jpg"
                      "ah8.jpg"
                      "ah9.jpg"
                      "ah10.jpg"
                      "ah11.jpg"
                      "lain1.png")))
                      
  (setq fancy-splash-image
        (concat doom-private-dir "splash/"
                (nth (random (length alternatives)) alternatives))))

;; Pywal Implementation

(use-package ewal
  :init (setq ewal-use-built-in-always-p nil
              ewal-use-built-in-on-failure-p t
              ewal-built-in-palette "sexy-monokai"))
(use-package ewal-doom-themes
  :init (progn
          (setq doom-theme-underline-parens t
                my:rice:font (font-spec
                              :family "JetBrainsMono Nerd Font"
                              :weight 'semi-bold
                              :size 14.0))
          (show-paren-mode +1)
          (global-hl-line-mode)
          (set-frame-font my:rice:font nil t)
          (add-to-list  'default-frame-alist
                        `(font . ,(font-xlfd-name my:rice:font))))
  :config (progn
            (load-theme 'ewal-doom-vibrant t)
            (enable-theme 'ewal-doom-vibrant)))

(add-hook 'org-mode-hook 'org-fragtog-mode)
;(setq org-format-latex-options (plist-put org-format-latex-options :scale 3.0))
(setenv "PATH" (concat (getenv "PATH") ":/usr/texbin"))

(setq visual-fill-column-mode t)
(setq visual-fill-column-center-text t)
(setq visual-fill-column-width 100)

(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.5))
