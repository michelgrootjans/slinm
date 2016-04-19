(ns cloj.core-spec
  (:require [speclj.core :refer :all]
            [cloj.bowling :refer :all]))

(context "a new game"
  (it "scores 0"
    (should= 0 (score []))))

(context "rolling 0"
  (it "scores 0"
    (should= 0 (score [0]))))

(context "rolling gutter game"
  (it "scores 0"
    (should= 0 (score (repeat 0)))))

(context "rolling 1"
  (it "scores 1"
    (should= 1 (score [1]))))

(context "rolling 1-1"
  (it "scores 1"
    (should= 2 (score [1 1]))))

(context "rolling all ones"
  (it "scores 20"
    (should= 20 (score (repeat 1)))))

(context "rolling spare-2"
  (it "scores 14"
    (should= (+ 4 6 2 2) (score [6 4 2]))))

(context "rolling all fives"
  (it "scores 14"
    (should= 150 (score (repeat 5)))))
