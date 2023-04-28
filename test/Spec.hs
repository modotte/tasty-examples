import Hedgehog qualified as HH
import Hedgehog.Gen qualified as HHG
import Hedgehog.Range qualified as HHR
import Properties (properties)
import Test.Hspec (Spec)
import Test.Hspec qualified as H
import Test.Tasty
import Test.Tasty.Hedgehog qualified as THH
import Test.Tasty.Hspec (testSpec)
import Test.Tasty.Hspec qualified as TH
import Units (units)

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [units, properties]
