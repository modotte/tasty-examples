import Properties (properties)
import Test.Tasty
import Test.Tasty.Runners.Html
import Units (units)

main :: IO ()
main = defaultMainWithIngredients (htmlRunner : defaultIngredients) tests

tests :: TestTree
tests = testGroup "Tests" [units, properties]
