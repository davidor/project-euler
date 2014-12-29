;; What is the smallest positive number that is evenly
;; divisible by all of the numbers from 1 to 20?

(ns project-euler-clojure.005)

(defn gcd [a b]
  (cond
    (> a b) (recur (- a b) b)
    (> b a) (recur a (- b a))
    :else a))

(defn lcm [a b]
  (/ (* a b)
     (gcd a b)))

(defn problem-005 []
  (reduce lcm (range 1 21)))

