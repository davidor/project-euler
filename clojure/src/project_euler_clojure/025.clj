;; What is the first term in the Fibonacci sequence to contain 1000 digits?

(ns project-euler-clojure.025)

(defn fib [a b]
  (->> (fib b (+' a b))
       (cons a)
       (lazy-seq)))

(defn count-digits [n]
  (->> (str n)
       (count)))

(defn problem-025 []
  (->> (fib 1 1)
       (take-while #(< (count-digits %) 1000))
       (count)
       (inc)))
