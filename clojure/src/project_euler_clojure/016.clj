;; What is the sum of the digits of the number 2^1000?

(ns project-euler-clojure.016)

(defn sum-digits [n]
  (->> (str n)
       (map char)
       (map #(Character/getNumericValue %))
       (reduce +)))

(defn problem-016 []
  (->> (repeat 1000 2)
       (reduce *')
       (sum-digits)))
