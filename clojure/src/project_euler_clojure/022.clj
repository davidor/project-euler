;; Using names.txt, a 46K text file containing over five-thousand first names,
;; begin by sorting it into alphabetical order. Then working out the
;; alphabetical value for each name, multiply this value by its alphabetical
;; position in the list to obtain a name score.
;; For example, when the list is sorted into alphabetical order, COLIN, which
;; is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list.
;; So, COLIN would obtain a score of 938 × 53 = 49714.
;; What is the total of all the name scores in the file?

(ns project-euler-clojure.022
  (:require [clojure.java.io :as io]))

(def input-file (io/file (io/resource "data/022-input.txt" )))

(defn alphabetical-value-char [c]
  (+ (- (int c) (int \A)) 1))

(defn alphabetical-value-string [s]
  (->> (map alphabetical-value-char s)
       (reduce +)))

(defn names-from-file []
  (->> (slurp input-file)
       (#(clojure.string/split % #","))
       (map #(clojure.string/replace % "\"" ""))))

(defn problem-022 []
  (->> (names-from-file)
       (sort)
       (map #(alphabetical-value-string %))
       (map * (iterate inc 1))
       (reduce +)))
