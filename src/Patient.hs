module Patient where

data Patient = Patient {
  family::String,
  name::String
}

{-  
data Caniformia = Dog String
data Felinae = Cat String
data Squamata = Snake String | Lizard String
data Glires = Rabbit String | Mouse String
data Muroidea = Hamster String | Gerbil String | Rat String
data Archelosauria = Bird String | Tortoise String

data Patient = 
    Caniformia 
  | Felinae 
  | Squamata 
  | Glires 
  | Muroidea 
  | Archelosauria
type Patients = [Patient]

mapPatient t l = map (\i->t i) l

dogTypes = [
    "Cavalier King Charles Spaniel", 
    "Poodle",
    "Bulldog",
    "Corgi",
    "German Shepard",
    "Pug",
    "Labrador Retriever",
    "Golder Retriever",
    "Husky",
    "Basset Hound"
  ]

catTypes = [
    "Maine Coone", 
    "Manx",
    "Persian",
    "Russian Blue",
    "Siamese",
    "Abyssinian",
    "Bengal",
    "Burmese",
    "Cornish Rex",
    "Ragamuffin"
  ]

snakeTypes = []
lizardTypes = []

rabbitTypes = [] 
mouseTypes = []

hamsterTypes = [] 
gerbilTypes = []
ratTypes = []

birdTypes = []
tortoiseTypes = []

dogs = mapPatient Dog dogTypes
cats = mapPatient Cat dogTypes

snakes = mapPatient Snake snakeTypes
lizards = mapPatient Lizard lizardTypes

rabbits = mapPatient Rabbit rabbitTypes
mice = mapPatient Mouse mouseTypes

hamsters = mapPatient Hamster hamsterTypes
gerbils = mapPatient Gerbil gerbilTypes
rats = mapPatient Rat ratTypes

birds = mapPatient Bird birdTypes
tortoises = mapPatient Tortoise tortoiseTypes

-}