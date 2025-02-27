;;; build.el --- build README.md from README.org     -*- lexical-binding: t; -*-

;; Copyright (C) 2021  Corwin Brust

;; Author: Corwin Brust <corwin@bru.st>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; build README.md from README.org

;;; Code:

(require 'ox-md)  ;; maybe something to install ox-md from MELPA?

(save-excursion
  (find-file "README.org")
  (org-md-export-to-markdown)
  ;;(org-latex-export-to-pdf) ;; ugly, omit for now
  (org-ascii-export-to-ascii))

(provide 'build)
;;; build.el ends here
