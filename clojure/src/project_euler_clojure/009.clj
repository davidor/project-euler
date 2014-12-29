;; A Pythagorean triplet is a set of three natural numbers, a < b < c,
;; for which, a^2 + b^2 = c^2.
;; There exists exactly one Pythagorean triplet for which a + b + c = 1000.
;; Find the product abc.

(ns project-euler-clojure.009)

(defn pythagorean? [a b c]
  (= (+ (* a a) (* b b))
     (* c c)))

(defn find-solution-triplet []
  (for [a (range 1 1000)
        b (range a (- 1000 a))
        c [(- 1000 a b)]
    :when (and (= (+ a b c) 1000)
               (pythagorean? a b c))]
    [a b c]))

(defn problem-009 []
  (->> (find-solution-triplet)
       (apply reduce *)))
