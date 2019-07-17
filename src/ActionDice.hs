module ActionDice where
  
data ActionDice = ActionDice {
  rollA::Int,
  rollB::Int
}

getResult :: ActionDice -> Bool -> Bool -> Int
getResult actionDice skilled specialised = 
  if skilled && specialised then (min (rollA actionDice) (rollB actionDice))
    else if skilled && not specialised then (rollA actionDice)
      else if not skilled && specialised then (rollA actionDice)
        else (max (rollA actionDice) (rollB actionDice))