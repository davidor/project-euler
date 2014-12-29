;; Find the sum of all the numbers that can be written as the sum of
;; fifth powers of their digits.

(ns project-euler-clojure.030)

(defn sum-fifth-power-digits [n]
  (->> (str n)
       (map char)
       (map #(Character/getNumericValue %))
       (map #(int (Math/pow % 5)))
       (reduce +)))

;; The upper limit is 6*9^5 = 354294
(defn problem-030 []
  (->> (range 10 354295)
       (filter #(= % (sum-fifth-power-digits %)))
       (reduce +)))
