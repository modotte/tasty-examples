import Hedgehog qualified as HH
import Hedgehog.Gen qualified as HHG
import Hedgehog.Range qualified as HHR
import Test.Hspec qualified as H
import Test.Tasty
import Test.Tasty.Hedgehog qualified as THH
import Test.Tasty.Hspec (testSpec)
import Test.Tasty.Hspec qualified as TH

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [units, properties]

units :: TestTree
units = testGroup "" []

properties :: TestTree
properties = testGroup "Properties" []
