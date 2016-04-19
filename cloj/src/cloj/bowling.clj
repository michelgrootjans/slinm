(ns cloj.bowling)

(defn- spare? [rolls]
  (= 10 (reduce + (take 2 rolls))))

(defn- rest-rolls [rolls]
  (drop 2 rolls))

(defn- to-frames [rolls]
  (lazy-seq (cons (if (spare? rolls)
                    (take 3 rolls)
                    (take 2 rolls))
                  (to-frames (rest-rolls rolls)))))

(defn score [rolls]
  (reduce + (map #(reduce + %)
                 (take 10 (to-frames rolls)))))
