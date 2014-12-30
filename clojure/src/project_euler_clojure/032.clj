;; We shall say that an n-digit number is pandigital if it makes use of all the
;; digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1
;; through 5 pandigital.
;; The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing
;; multiplicand, multiplier, and product is 1 through 9 pandigital.
;; Find the sum of all products whose multiplicand/multiplier/product identity
;; can be written as a 1 through 9 pandigital.

;; The important thing is to limit the search space a*b = c.
;; There are two possibilities: 
;;   1) a has 1 digit and b has 4; c can have 4
;;   2) b has 2 digits and a has 3; c can have 5
;; If a has 1 digit, b cannot have 3. (999*9 = 8991; only 8 digits)
;; a and b cannot have 5 or more digits. In that case, the concatenation of the
;; 3 numbers would have at least 11 digits.

(ns project-euler-clojure.032)

(defn pandigital? [n]
  (let [str-n (str n)]
    (when (= (count str-n) 9) false)
    (= (apply str (sort str-n))
       "123456789")))

(defn problem-032 []
  (->> (for [a (range 100)
             b (range 100 10000)
             :when (pandigital? (str a b (* a b)))] 
         (* a b))
       (distinct)
       (reduce +)))
