;;; common --- Common functions for Advent of Code 2025; -*- lexical-binding: t -*-
;;
;; Author: Eric Haberstroh <eric@erichaberstroh.de>
;;
;; Copyright (C) 2026 Eric Haberstroh
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;(solve-puzzle-another-way (aoc-input-buffer 1 "a" t))
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;
;;; Commentary:
;;
;; This file contains common functions needed by all puzzle solutions
;; in this folder. To load the common functions, add this to each
;; puzzle file:
;;
;; (load (expand-file-name "./common.el"))
;;
;;; Code:

(defun aoc-input-buffer (day puzzle &optional example)
  "Return a buffer for the input data of the given Advent of Code
day.

Puzzle is expected to be a string containing either `a' or `b' for the
first or second puzzle of the day.

If the optional argument example is non-nil, the example input will be
read instead.  Input files are expected to be in the current directory
and follow a naming scheme of dayNNa.txt resp. dayNNa-example.txt."
  (find-file-noselect
   (concat
    "day"
    (format "%02d" day)
    puzzle
    (when example "-example")
    ".txt")))
