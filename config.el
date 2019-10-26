;;; .doom.d/config.el -*- lexical-binding: t; -*-
(add-to-list 'load-path "~/.emacs.d/evil-tutor")
;; Place your private configuration here

(global-set-key [f8] 'neotree-toggle)

(setq my_name "V.Shishkin")
;;(setq run-on-win t)
;;(setq koi8-coding t)

;;abbrew mode
(setq-default abbrev-mode t)

(blink-cursor-mode -1)
;; show tabs
(setq x-stretch-cursor t)
(mouse-avoidance-mode 'exile)

(defun my-clipboard-copy(beg end)
  "Save selected text to clipboard."
  (interactive "r")
  (setq select-enable-clipboard 't)
  (kill-ring-save beg end)
  (setq select-enable-clipboard 'nil)
  )

;;
;; my hotkeys
;;

(global-set-key [A-insert] 'my-clipboard-copy)
(global-unset-key [home])
(global-set-key [home] 'beginning-of-line)
(global-unset-key [end])
(global-set-key [end] 'end-of-line)
(global-set-key [C-home] 'beginning-of-buffer)
(global-set-key [C-end] 'end-of-buffer)
(global-unset-key [f2])
(global-set-key [f2] 'save-buffer)
(defun my-save-all ()
  "Unconditionally save all file buffers"
  (interactive)
  (save-some-buffers 't nil)
  )
(global-set-key [C-f2] 'my-save-all)
(global-set-key [f3] 'find-file)
(defun find-current-file ()
  (interactive)
  (find-file (buffer-file-name))
  )
(global-set-key [C-f3] 'find-current-file) ;in fact - reload
(global-set-key [f4] 'switch-to-buffer)
(global-set-key [C-f4] 'kill-buffer)
;; (global-set-key [f5] 'hs-hide-block)
;; (global-set-key [f6] 'hs-hide-level)
					;(global-set-key [f8] 'goto-line)
(global-set-key [f7] 'compile)
(global-set-key [C-f8] 'next-error)

(global-set-key [f10] 'man)

(global-set-key [S-delete] 'delete-region)
(global-set-key [delete] 'delete-char)
(global-set-key [C-backspace] 'backward-kill-word)
(global-set-key [C-delete] 'kill-word)
(global-set-key [M-backspace] 'join-line)
(global-set-key [S-backspace] 'kill-whole-line)

(global-set-key [f11] 'delete-trailing-whitespace)

;; TODO - read about abbrev mode

(global-set-key [f12] 'expand-abbrev)
(global-set-key [C-f12] 'abbrev-mode)
(global-set-key [C-f11] 'toggle-truncate-lines)

(global-set-key [C-return] 'newline-and-indent)
(defun my-arg-indent()
  (interactive)
  (indent-to-column 20)
  )
(global-set-key [C-tab] 'indent-relative)

;; Ibuffer settings
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)


