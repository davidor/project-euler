;; What is the millionth lexicographic permutation of the digits
;; 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

(ns project-euler-clojure.024
  (:require [clojure.math.combinatorics :as combo]))

(defn problem-024 []
  (->> (combo/permutations (range 10))
       (#(nth % 999999))
       (clojure.string/join)
       (bigint)))
