;; Considering quadratics of the form: n² + an + b, where |a| < 1000
;; and |b| < 1000, find the product of the coefficients, a and b,
;; for the quadratic expression that produces the maximum number of
;; primes for consecutive values of n, starting with n = 0.

(ns project-euler-clojure.027)

(use 'clojure.set)

(def primes
  (loop [primes [] candidates (apply sorted-set (range 2 (inc 10000)))]
    (cond
      (empty? candidates) primes
      :else (let [new-prime (first candidates)
                  new-primes (conj primes new-prime)
                  multiples (range new-prime (inc 10000) new-prime)
                  new-candidates (difference candidates multiples)]
              (recur new-primes new-candidates)))))

(defn prime? [n]
  (not= -1 (.indexOf primes n)))

(def is-prime?-memo (memoize prime?))

;; at n = 0, n^2+ an + b = b, b = b. Therefore, b needs to be prime
(defn possible-solution-pairs []
  (for [a (range -999 1000)
        b (range -999 1000)
        :when (prime? b)]
    [a b]))

(defn quadratic-formula [a b n]
  (+ (+ (* n n)
        (* a n))
     b))

(defn max-primes [pair]
  (->> (iterate inc 0)
       (map #(quadratic-formula (first pair) (second pair) %))
       (take-while is-prime?-memo)
       (count)))

(defn problem-027 []
  (->> (possible-solution-pairs)
       (map #(hash-map :pair % :primes (max-primes %)))
       (sort-by :primes >)
       (first)
       (#(get % :pair))
       (reduce *)))
