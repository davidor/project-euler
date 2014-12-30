;; In England the currency is made up of pound, £, and pence, p, 
;; and there are eight coins in general circulation:
;; 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
;; How many different ways can £2 be made using any number of coins?

(ns project-euler-clojure.031)

(def coins [1 2 5 10 20 50 100 200])

(defn count-ways [amount coin-values]
  (let [coin-min-value (first coin-values)]
  (cond 
    (empty? coin-values) 0 
    (neg? amount) 0
    (= coin-min-value amount) 1
    :else (+ (count-ways amount (rest coin-values))
             (count-ways (- amount coin-min-value) coin-values)))))

(defn problem-031 []
  (count-ways 200 coins))
