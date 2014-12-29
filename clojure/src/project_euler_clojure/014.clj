;; Which starting number, under 1000000, produces the longest Collatz chain?

(ns project-euler-clojure.014)

(defn next-sequence-term [n]
  (if (even? n)
    (/ n 2)
    (+ (* 3 n) 1)))

(def collatz-length
  (memoize
    (fn [n]
      (if (= n 1)
        n
        (+ 1 (collatz-length (next-sequence-term n)))))))

(defn calculate-collatz-lengths [numbers]
  (map #(hash-map :number % :length (collatz-length %)) numbers))

(defn problem-014 []
  (->> (range 1 1000000)
       (calculate-collatz-lengths)
       (sort-by :length >)
       (first)
       (:number)))
