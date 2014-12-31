;; Find the sum of all numbers which are equal to the sum of the
;; factorial of their digits.
;; Note: as 1! = 1 and 2! = 2 are not sums they are not included.

;; 9!*7 contains seven digits. 9!*8 too. This means that no numbers
;; higher than 9!*7 will be part of the solution.

(ns project-euler-clojure.034)

(def fact
  (memoize
    (fn [n]
      (->> (range 1 (inc n))
           (reduce *')))))

(defn sum-fact-digits [n]
  (->> (str n)
       (map char)
       (map #(Character/getNumericValue %))
       (map fact)
       (reduce +)))

(defn problem-034 []
  (let [upper-bound (* 7 (fact 9))] 
    (->> (range 10 (inc upper-bound))
         (filter #(= % (sum-fact-digits %))) 
         (reduce +))))
