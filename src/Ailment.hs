module Ailment where

data Severity = Serious | Major | Minor
data Category = Cut | Burn | Poison | Internal | Fracture | Puncture

data Ailment = Ailment {
  category::String,
  severity::Int
}




