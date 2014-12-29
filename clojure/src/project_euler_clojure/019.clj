;; How many Sundays fell on the first of the month during the
;; twentieth century (1 Jan 1901 to 31 Dec 2000)?

(ns project-euler-clojure.019
  (:import (java.util Calendar)))

(defn dates-first-day-of-month [start-year end-year]
  (for [year (range start-year (inc end-year))
        month (range 12)]
    {:day 1 :month month :year year}))

(defn day-of-week [year month day]
  (let [calendar (Calendar/getInstance)]
    (.set calendar year month day)
    (.get calendar (Calendar/DAY_OF_WEEK))))

(defn sunday? [date]
    (= (Calendar/SUNDAY)
       (day-of-week (:year date) (:month date) (:day date))))

(defn problem-019 []
  (->> (dates-first-day-of-month 1901 2000)
       (filter sunday?)
       (count)))
