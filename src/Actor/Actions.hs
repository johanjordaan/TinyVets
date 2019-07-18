module Actor.Actions where

data ActionResult = Success | Failure

data Action = 
    Diagnose 
  | Triage
  | Heal
  | Care
  | Aquire
  | Study
  | Expand
    