;; Find the difference between the sum of the squares of the first one
;; hundred natural numbers and the square of the sum.

(ns project-euler-clojure.006)

(defn square [n]
  (* n n))

(defn square-of-sum [numbers]
  (->> (reduce + numbers)
       (square)))

(defn sum-of-squares [numbers]
  (->> (map square numbers)
       (reduce +)))

(defn problem-006 []
  (- (square-of-sum (range 101))
     (sum-of-squares (range 101))))
