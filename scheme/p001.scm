; gets the sum of all multiples of 3 or 5 up to a
(define (sum_mult a)
  (if (= a 0)
      0
      (if (or (= (modulo a 3) 0) (= (modulo a 5) 0))
          (+ a (sum_mult (- a 1)))
          (sum_mult (- a 1)))))

(sum_mult 999)