(ns cloj.core-spec
  (:require [speclj.core :refer :all]
            [cloj.bowling :refer :all]))

(context "a new game"
  (it "scores 0"
    (should= 0 (score 0))))