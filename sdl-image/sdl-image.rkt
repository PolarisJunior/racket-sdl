#lang racket
(require ffi/unsafe
         ffi/unsafe/define)

(provide
 (all-defined-out))



(define-ffi-definer define-sdl-image (ffi-lib "SDL2_image" #f))

(define-sdl-image IMG_Init (_fun _int -> _int))