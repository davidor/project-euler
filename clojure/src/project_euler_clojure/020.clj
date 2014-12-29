;; Find the sum of the digits in the number 100!

(ns project-euler-clojure.020)

(defn sum-digits [n]
  (->> (str n)
       (map char)
       (map #(Character/getNumericValue %))
       (reduce +)))

(defn problem-020 []
  (->> (range 1 101)
       (reduce *')
       (sum-digits)))
