module Aquire where
  
import Actions
import Bonus
  
import Actor
import Ailment
import Patient
import ActionDice
import Equipment
  
aquire :: Actor -> [Equipment] -> ActionDice -> ActionResult  
aquire actor equipment actionDice = 
  let
    baseSkill = aquisitionSkill actor
    equipmentBonus = foldl (\acc e -> acc + (aquisitionBonus (equipmentBonuses e))) 0 equipment
    result = rollA actionDice
    success = result - equipmentBonus <= baseSkill
  in if success then Success else Failure
  