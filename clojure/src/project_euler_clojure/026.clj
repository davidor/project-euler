;; Find the value of d < 1000 for which 1/d contains the longest recurring
;; cycle in its decimal fraction part.

(ns project-euler-clojure.026)

(defn prime? [n]
  (loop [n n k 2]
    (cond
      (= n k) true
      (zero? (mod n k)) false
      :else (recur n (inc k)))))

(defn pow [a b]
  (bigint (reduce *' (repeat b a))))

(defn longest-cycle [n]
  (->> (range 1 n)
       (take-while #(pos? (mod (- (pow 10 %) 1) n)))
       (reverse)
       (first)
       (inc)))

(defn problem-026 []
  (->> (range 7 1000)
       (filter prime?)
       (map #(hash-map :num % :cycle-length (longest-cycle %)))
       (sort-by :cycle-length >)
       (first)
       (:num)))
