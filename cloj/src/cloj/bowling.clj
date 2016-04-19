(ns cloj.bowling)

(defn- sum [rolls]
  (reduce + rolls))

(defn- spare? [rolls]
  (= 10 (sum (take 2 rolls))))

(defn- rolls-for-frame [rolls]
  (if (spare? rolls)
    (take 3 rolls)
    (take 2 rolls)))

(defn- rest-rolls [rolls]
  (drop 2 rolls))

(defn- to-frames [rolls]
  (lazy-seq (cons (rolls-for-frame rolls)
                  (to-frames (rest-rolls rolls)))))

(defn score [rolls]
  (sum (map sum (take 10 (to-frames rolls)))))
