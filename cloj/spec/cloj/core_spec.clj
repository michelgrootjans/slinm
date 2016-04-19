(ns cloj.core-spec
  (:require [speclj.core :refer :all]
            [cloj.bowling :refer :all]))

(context "rolling gutter game"
  (it "scores 0"
    (should= 0 (score (repeat 0)))))

(context "rolling all ones"
  (it "scores 20"
    (should= 20 (score (repeat 1)))))
