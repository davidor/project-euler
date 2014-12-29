;; Find the largest palindrome made from the product of two 3-digit numbers.

(ns project-euler-clojure.004)

(defn products-3-digit-numbers []
  (for [x (range 100 1000)
        y (range 100 1000)]
    (* x y)))

(defn palindrome? [n]
  (= (reverse (str n))
     (seq (str n))))

(defn problem-004 []
  (->> (products-3-digit-numbers)
       (filter palindrome?)
       (apply max)))
