import Properties (properties)
import Test.Tasty
import Units (units)

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [units, properties]
