; The GIMP -- an image manipulation program
; Copyright (C) 1995 Spencer Kimball and Peter Mattis
; 
; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation; either version 2 of the License, or
; (at your option) any later version.
; 
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
; 
; You should have received a copy of the GNU General Public License
; along with this program; if not, write to the Free Software
; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
; Copyright (C) 1997 Andy Thomas alt@picnic.demon.co.uk
; adds a frame
; Copyright (C) 1997-1999 Sven Neumann <sven@gimp.org>
;; Adds a drop shadow of the current selection or alpha-channel. 
; Thanks to Andrew Donkin (ard@cs.waikato.ac.nz) for the inital script 
;
; Copyright (C) Gerhard Kulzer for integrating the two scripts and setting 
; the defaults to KDE manual specifications

(define (deltacolour col delta)
  (let* ((newcol (+ col delta)))
    (if (< newcol 0) (set! newcol 0))
    (if (> newcol 255) (set! newcol 255))
    newcol)
  )

(define (adjcolour col delta)
  (mapcar (lambda (x) (deltacolour x delta)) col)
)

(define (gen_top_array xsize ysize owidth oheight width height)
  (let* ((n_array (cons-array 10 'double)))
    (aset n_array 0 0 )
    (aset n_array 1 0 )
    (aset n_array 2 xsize)
    (aset n_array 3 ysize)
    (aset n_array 4 (+ xsize owidth))
    (aset n_array 5 ysize)
    (aset n_array 6 width)
    (aset n_array 7 0 )
    (aset n_array 8 0 )
    (aset n_array 9 0 )
    n_array)
)

(define (gen_left_array xsize ysize owidth oheight width height)
  (let* ((n_array (cons-array 10 'double)))
    (aset n_array 0 0 )
    (aset n_array 1 0 )
    (aset n_array 2 xsize)
    (aset n_array 3 ysize)
    (aset n_array 4 xsize)
    (aset n_array 5 (+ ysize oheight))
    (aset n_array 6 0 )
    (aset n_array 7 height )
    (aset n_array 8 0 )
    (aset n_array 9 0 )
    n_array)
)

(define (gen_right_array xsize ysize owidth oheight width height)
  (let* ((n_array (cons-array 10 'double)))
    (aset n_array 0 width )
    (aset n_array 1 0 )
    (aset n_array 2 (+ xsize owidth))
    (aset n_array 3 ysize)
    (aset n_array 4 (+ xsize owidth))
    (aset n_array 5 (+ ysize oheight))
    (aset n_array 6 width)
    (aset n_array 7 height)
    (aset n_array 8 width )
    (aset n_array 9 0 )
    n_array)
)

(define (gen_bottom_array xsize ysize owidth oheight width height)
  (let* ((n_array (cons-array 10 'double)))
    (aset n_array 0 0 )
    (aset n_array 1 height)
    (aset n_array 2 xsize)
    (aset n_array 3 (+ ysize oheight))
    (aset n_array 4 (+ xsize owidth))
    (aset n_array 5 (+ ysize oheight))
    (aset n_array 6 width)
    (aset n_array 7 height)
    (aset n_array 8 0 )
    (aset n_array 9 height)
    n_array)
)

(define (script-fu-kde-screenshot-dropshadow aimg adraw)

  (let* ((xsize 1) (ysize 1)
         (colour '(0 0 0))
         (dvalue 1)
         (shadow-transl-x 5) (shadow-transl-y 5)
         (shadow-blur 10) (shadow-opacity 80)
         (allow-resize TRUE)
         (img (car (gimp-drawable-get-image adraw)))
         (owidth (car (gimp-image-width img)))
         (oheight (car (gimp-image-height img)))
         (width (+ owidth (* 2 xsize)))
         (height (+ oheight (* 2 ysize)))
         (layer (car (gimp-layer-new img width height
            (car (gimp-drawable-type-with-alpha adraw)) "Border-Layer" 100 NORMAL-MODE)))
	 (shadow-blur (max shadow-blur 0))
	 (shadow-opacity (min shadow-opacity 100))
	 (shadow-opacity (max shadow-opacity 0))
	 (type (car (gimp-drawable-type-with-alpha adraw)))
	 (image-width (car (gimp-image-width img)))
	 (image-height (car (gimp-image-height img)))
	 (from-selection 0)
	 (active-selection 0)
	 (shadow-layer 0))

    (gimp-context-push) ; pushes current context to the top stack which becomes the new context

    (gimp-image-undo-group-start img)

    (gimp-image-resize img width height xsize ysize)

    (gimp-image-add-layer img layer 0)
    (gimp-drawable-fill layer TRANSPARENT-FILL)

    (gimp-context-set-background (adjcolour colour dvalue))
    (gimp-free-select img
                      10
                      (gen_top_array xsize ysize owidth oheight width height)
                      CHANNEL-OP-REPLACE
                      0
                      0
                      0.0)
    (gimp-edit-fill layer BACKGROUND-FILL)
    (gimp-context-set-background (adjcolour colour (/ dvalue 2)))
    (gimp-free-select img
                      10
                      (gen_left_array xsize ysize owidth oheight width height)
                      CHANNEL-OP-REPLACE
                      0
                      0
                      0.0)
    (gimp-edit-fill layer BACKGROUND-FILL)
    (gimp-context-set-background (adjcolour colour (- 0 (/ dvalue 2))))
    (gimp-free-select img
                      10
                      (gen_right_array xsize ysize owidth oheight width height)
                      CHANNEL-OP-REPLACE
                      0
                      0
                      0.0)

    (gimp-edit-fill layer BACKGROUND-FILL)
    (gimp-context-set-background (adjcolour colour (- 0 dvalue)))
    (gimp-free-select img
                      10
                      (gen_bottom_array xsize ysize owidth oheight width height)
                      CHANNEL-OP-REPLACE
                      0
                      0
                      0.0)

    (gimp-edit-fill layer BACKGROUND-FILL)
    (gimp-selection-none img)
;    (gimp-displays-flush)  ; show what's been done
;  add shadow ------------------------------------------------------
    (gimp-image-set-active-layer img adraw)

    (gimp-layer-add-alpha adraw)
    (if (= (car (gimp-selection-is-empty img)) TRUE)
	(begin
	  (gimp-selection-layer-alpha adraw)
	  (set! from-selection FALSE))
	(begin
	  (set! from-selection TRUE)
	  (set! active-selection (car (gimp-selection-save img)))))

    (let* ((selection-bounds (gimp-selection-bounds img))
	   (select-offset-x (cadr selection-bounds))
	   (select-offset-y (caddr selection-bounds))
	   (select-width (- (cadr (cddr selection-bounds)) select-offset-x))
	   (select-height (- (caddr (cddr selection-bounds)) select-offset-y))
  
	   (shadow-width (+ select-width (* 2 shadow-blur)))
	   (shadow-height (+ select-height (* 2 shadow-blur)))
	   
	   (shadow-offset-x (- select-offset-x shadow-blur))
	   (shadow-offset-y (- select-offset-y shadow-blur)))

      (if (= allow-resize TRUE)
	  (let* ((new-image-width owidth)
		 (new-image-height oheight)
		 (image-offset-x 0)
		 (image-offset-y 0))

	    (if (< (+ shadow-offset-x shadow-transl-x) 0)
		(begin
		  (set! image-offset-x (- 0 (+ shadow-offset-x
					       shadow-transl-x)))
		  (set! shadow-offset-x (- 0 shadow-transl-x))
		  (set! new-image-width (- new-image-width image-offset-x))))

	    (if (< (+ shadow-offset-y shadow-transl-y) 0)
		(begin
		  (set! image-offset-y (- 0 (+ shadow-offset-y
					       shadow-transl-y)))
		  (set! shadow-offset-y (- 0 shadow-transl-y))
		  (set! new-image-height (- new-image-height image-offset-y))))

	    (if (> (+ (+ shadow-width shadow-offset-x) shadow-transl-x)
		   new-image-width)
		(set! new-image-width
		      (+ (+ shadow-width shadow-offset-x) shadow-transl-x)))

	    (if (> (+ (+ shadow-height shadow-offset-y) shadow-transl-y)
		   new-image-height)
		(set! new-image-height
		      (+ (+ shadow-height shadow-offset-y) shadow-transl-y)))

	    (gimp-image-resize img
			       new-image-width
			       new-image-height
			       image-offset-x
			       image-offset-y)))

      (set! shadow-layer (car (gimp-layer-new img
					      shadow-width
					      shadow-height
					      type
					      "Drop-Shadow"
					      shadow-opacity
					      NORMAL-MODE)))
      (gimp-image-add-layer img shadow-layer -1)
      (gimp-layer-set-offsets shadow-layer
			      shadow-offset-x
			      shadow-offset-y))

    (gimp-drawable-fill shadow-layer TRANSPARENT-FILL)
    (gimp-context-set-background colour)
    (gimp-edit-fill shadow-layer BACKGROUND-FILL)
    (gimp-selection-none img)
;    (gimp-layer-set-preserve-trans shadow-layer FALSE)
    (if (>= shadow-blur 1.0) (plug-in-gauss-rle 1
						img
						shadow-layer
						shadow-blur
						TRUE
						TRUE))
    (gimp-layer-translate shadow-layer shadow-transl-x shadow-transl-y)

    (if (= from-selection TRUE)
	(begin
	  (gimp-selection-load active-selection)
	  (gimp-edit-clear shadow-layer)
	  (gimp-image-remove-channel img active-selection)))

    (if (and
	 (= (car (gimp-layer-is-floating-sel adraw)) 0)
	 (= from-selection FALSE))
	(gimp-image-raise-layer img adraw))

    (gimp-image-set-active-layer img adraw)
    (gimp-image-undo-group-end img)
    (gimp-image-merge-visible-layers img 0)
    (gimp-displays-flush)

    (gimp-context-pop)
    (gimp-image-clean-all img)
))

(script-fu-register "script-fu-kde-screenshot-dropshadow"
                    _"_Kde-screenshot-dropshadow"
                    "Add a border and drop shadow around an image"
                    "Andy Thomas <alt@picnic.demon.co.uk> Sven Neumann <sven@gimp.org> Andrew Donkin <ard@cs.waikato.ac.nz>"
                    "stitched together with KDE defaults by Gerhard Kulzer"
                    "15/02/07"
                    "*"                        ;image type the script works on
                    SF-IMAGE       "Input image"          0
                    SF-DRAWABLE    "Input drawable"       0
)

(script-fu-menu-register "script-fu-kde-screenshot-dropshadow"
                         _"<Image>/Script-Fu/Utils")
