;; By considering the terms in the Fibonacci sequence whose values do not
;; exceed four million, find the sum of the even-valued terms.

(ns project-euler-clojure.002)

(defn fib [a b]
  (->> (fib b (+ a b))
       (cons a)
       (lazy-seq)))

(defn problem-002 []
  (->> (take-while (partial >= 4000000) (fib 1 1))
       (filter even?)
       (reduce +)))