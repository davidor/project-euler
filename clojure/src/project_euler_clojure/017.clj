;; If all the numbers from 1 to 1000 (one thousand) inclusive were
;; written out in words, how many letters would be used?

(ns project-euler-clojure.017)

(def word-for
  {1 "one" 2 "two" 3 "three" 4 "four" 5 "five"
   6 "six" 7 "seven" 8 "eight" 9 "nine"
   10 "ten" 11 "eleven" 12 "twelve" 13 "thirteen" 14 "fourteen"
   15 "fifteen" 16 "sixteen" 17 "seventeen" 18 "eighteen" 19 "nineteen"
   20 "twenty" 30 "thirty" 40 "forty" 50 "fifty"
   60 "sixty" 70 "seventy" 80 "eighty" 90 "ninety"
   100 "hundred" 1000 "thousand"})

(defn two-digit-number-to-word [n]
  (if (or (<= n 19) (zero? (mod n 10)))
    (word-for n)
    (str
      (word-for (* 10 (int (/ n 10))))
      (word-for (mod n 10)))))

(defn three-digit-number-to-word [n]
  (if (zero? (mod n 100))
    (str (word-for (int (/ n 100)))
         (word-for 100))
    (str (word-for (int (/ n 100)))
         (word-for 100)
         "and"
         (two-digit-number-to-word (mod n 100)))))

(defn number-to-word [n]
  (cond
    (< n 10) (word-for n)
    (< n 100) (two-digit-number-to-word n)
    (< n 1000) (three-digit-number-to-word n)
    (= n 1000) (str (word-for 1)
                    (word-for n))))

(defn problem-017 []
  (->> (range 1 1001)
       (map number-to-word)
       (map count)
       (reduce +)))
