#lang racket
(require ffi/unsafe
         ffi/unsafe/define)
(require "sdl-image-constants.rkt")

(provide
 (all-defined-out))

(require "../sdl/structs.rkt")


(define-ffi-definer define-sdl-image (ffi-lib "SDL2_image" #f))

(define-sdl-image IMG_Init (_fun _int -> _int))

(define-sdl-image IMG_Quit (_fun -> _void))

(define-sdl-image IMG_LoadTexture (_fun _SDL_Renderer _string -> _SDL_Texture))