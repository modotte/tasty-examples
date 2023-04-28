import Test.Tasty
import Test.Tasty.Hedgehog as HH
import Test.Tasty.Hspec as H

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [units, properties]

units :: TestTree
units = testGroup "Units" []

properties :: TestTree
properties = testGroup "Properties" []
