(setq magit-repository-directories '(("~/Projects" . 1) ("~/Projects/External" . 1))
      org-default-notes-file "~/Documents/org/inbox.org"
      org-directory "~/Documents/org"
      exec-path-from-shell-arguments '("-i"))
;;====================================================
;; eclim mode settings
;;====================================================

(require 'eclim)
(setq eclimd-autostart nil)

(defun my-java-mode-hook ()
  (eclim-mode t))

(add-hook 'java-mode-hook 'my-java-mode-hook)

(custom-set-variables
 '(eclim-eclipse-dirs '("~/softwares/eclipse"))
 '(eclim-executable "~/softwares/eclipse/eclim")
 '(eclimd-default-workspace "~/softwares/eclipse"))

(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)

;;====================================================
;; company idle completion settings
;;====================================================

(setq company-minimum-prefix-length 2)
(setq company-idle-delay 0)


;;====================================================
;; org mode soft wrap
;;====================================================

(add-hook 'org-mode-hook #'(lambda ()
                             (visual-line-mode)
                             (org-indent-mode)))

;;====================================================
;; org mode soft wrap
;;====================================================

(setq org-pandoc-options '((standalone . t)))
(setq org-pandoc-options-for-beamer-pdf '((latex-engine . "xelatex")))
(setq org-pandoc-options-for-latex-pdf '((latex-engine . "xelatex")))

;;====================================================

(provide 'init-local)
