{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Avoid reverse" #-}
module Properties (properties) where

import Hedgehog
import Hedgehog.Gen qualified as Gen
import Hedgehog.Range qualified as Range
import Test.Tasty
import Test.Tasty.Hedgehog

prop_reverse :: Property
prop_reverse =
  property $ do
    xs <- forAll genAlphaList
    reverse (reverse xs) === xs
  where
    genAlphaList = Gen.list (Range.linear 0 100) Gen.alpha

properties :: TestTree
properties =
  testGroup
    "Properties"
    [ testProperty "hedgehog tests" prop_reverse
    ]