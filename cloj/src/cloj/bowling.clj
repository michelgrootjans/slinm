(ns cloj.bowling)

(defn- to-frames [rolls]
  (lazy-seq (cons (if (= 10 (reduce + (take 2 rolls)))
                    (take 3 rolls)
                    (take 2 rolls))
                  (to-frames (drop 2 rolls)))))

(defn score [rolls]
  (reduce + (map #(reduce + %)
                 (take 10 (to-frames rolls)))))
