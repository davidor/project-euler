;; What is the largest prime factor of the number 600851475143?

(ns project-euler-clojure.003)

(defn prime-factors [n]
  (loop [n n factors [] k 2]
    (cond
      (= n 1) factors
      (zero? (mod n k)) (recur (/ n k) (conj factors k) k)
      :else (recur n factors (inc k)))))

(defn problem-003 []
  (->> (prime-factors 600851475143)
       (apply max)))
