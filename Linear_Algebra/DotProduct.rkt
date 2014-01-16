;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname DotProduct) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;V1 computes the dot product of two vectors 

(define (dotproducts2vectors v1 v2 )
  (cond
    [(= (length v1) (length v2)) (compute-dot-product-2v v1 v2)]
    [else "Error: vectors in different dimentions"]))

(define (compute-dot-product-2v v1 v2)
  (cond 
    [(empty? v1) 0]
    [ else (+ (* (first v1)
                 (first v2)) (compute-dot-product-2v (rest v1)
                                                  (rest v2) ))]))

;;V1 computes the dot product of three vectors 

(define (dotproducts v1 v2 v3)
  (cond
    [(= (length v1) (length v2) (length v3)) (compute-dot-product v1 v2 v3)]
    [else "Error: vectors in different dimentions"]))

(define (compute-dot-product v1 v2 v3)
  (cond 
    [(empty? v1) 0]
    [ else (+ (* (first v1)
                 (first v2)
                 (first v3)) (compute-dot-product (rest v1)
                                                  (rest v2)
                                                  (rest v3)))]))