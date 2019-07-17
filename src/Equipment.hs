module Equipment where
  
import Bonus
  
data Equipment = Equipment {
  name::String,
  complexity::Int,
  equipmentBonuses::Bonus
}




