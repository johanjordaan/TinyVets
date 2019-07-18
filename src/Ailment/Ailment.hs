module Ailment.Ailment where

import Ailment.Severity
import Ailment.Category


data Ailment = Ailment {
  name::String,
  categories::[Category],
  severity::Severity
}



