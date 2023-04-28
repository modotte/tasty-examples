import Properties (properties)
import Test.Tasty
import Test.Tasty.Ingredients.Basic
import Test.Tasty.Ingredients.Rerun
import Test.Tasty.Runners.Html
import Units (units)

main :: IO ()
main =
  defaultMainWithIngredients
    (htmlRunner : rerunningTests [listingTests, consoleTestReporter] : defaultIngredients)
    tests

tests :: TestTree
tests = testGroup "Tests" [units, properties]
