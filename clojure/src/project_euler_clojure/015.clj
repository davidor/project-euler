;; Starting in the top left corner of a 2×2 grid, and only being able to move
;; to the right and down, there are exactly 6 routes to the bottom right
;; corner. How many such routes are there through a 20×20 grid?

(ns project-euler-clojure.015)

;; In a nxn grid, we need to take 2n steps to get to the end.
;; n steps need to be to the right, and n to the bottom.
;; The solution consists of choosing the n steps to the right
;; (or to the bottom) from the total of 2n. That is (2n n).

(defn factorial [n]
  (->> (range 1 (inc n))
       (reduce *')))

(defn binomial-coefficient [n k]
  (/ (factorial n)
     (*' (factorial k)
         (factorial (- n k)))))

(defn problem-015 []
  (binomial-coefficient 40 20))
