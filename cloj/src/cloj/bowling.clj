(ns cloj.bowling)

(defn score [rolls]
  (reduce + (take 20 rolls)))
