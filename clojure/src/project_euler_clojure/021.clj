;; Let d(n) be defined as the sum of proper divisors of n
;; (numbers less than n which divide evenly into n).
;; If d(a) = b and d(b) = a, where a ≠ b, then a and b are an
;; amicable pair and each of a and b are called amicable numbers.
;; Evaluate the sum of all the amicable numbers under 10000.

(ns project-euler-clojure.021)

(defn proper-divisors [n]
  (->> (range 1 (inc (/ n 2)))
       (filter (comp zero? (partial mod n)))))

(defn sum-proper-divisors [n]
  (->> (proper-divisors n)
       (reduce +)))

(defn amicable? [n]
  (and (not= (sum-proper-divisors n) n)
       (= (sum-proper-divisors (sum-proper-divisors n)) n)))

(defn problem-021 []
  (->> (range 1 10000)
       (filter amicable?)
       (reduce +)))
