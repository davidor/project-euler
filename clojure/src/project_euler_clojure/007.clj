;; What is the 10 001st prime number?

(ns project-euler-clojure.007)

(defn prime? [n]
  (loop [n n k 2]
    (cond
      (= n k) true
      (zero? (mod n k)) false
      :else (recur n (inc k)))))

(defn problem-007 []
  (->> (iterate inc 2)
       (filter prime?)
       (#(nth % 10000))))
