;; Find the sum of all the primes below two million.

(ns project-euler-clojure.010)

(use 'clojure.set)

(defn primes [limit]
  (loop [primes [] candidates (apply sorted-set (range 2 (inc limit)))]
    (cond
      (empty? candidates) primes
      :else (let [new-prime (first candidates)
                  new-primes (conj primes new-prime)
                  multiples (range new-prime (inc limit) new-prime)
                  new-candidates (difference candidates multiples)]
              (recur new-primes new-candidates)))))

(defn problem-010 []
  (reduce + (primes (dec 2000000))))
