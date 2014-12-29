;; Find the sum of all the multiples of 3 or 5 below 1000.

(ns project-euler-clojure.001)

(defn problem-001 []
  (->> (range 1000)
       (filter #(or (zero? (mod % 3))
                    (zero? (mod % 5))))
       (reduce +)))
