module Properties (properties) where

import Hedgehog
import Hedgehog.Gen
import Hedgehog.Range
import Test.Tasty
import Test.Tasty.Hedgehog

properties :: TestTree
properties = testGroup "Properties" []