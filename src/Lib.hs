module Lib where

someFunc :: IO ()
someFunc = putStrLn "someFunc"


data Caniformia = Dog 
data Felidae = Cat
data Squamata = Snake | Lizard
data Glires = Rabbit | Mouse
data Muroidea = Hamster | Gerbil | Rat
data Archelosauria = Birds | Tortiose

data Patient = Caniformia | Felidae | Squamata | Glires | Muroidea | Archelosauria

data Ailment_Severity = Serious | Major | Minor
data Ailment_Type = Cut | Burn | Poison | Internal | Fracture


