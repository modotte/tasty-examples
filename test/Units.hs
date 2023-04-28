{-# LANGUAGE BlockArguments #-}

module Units (units) where

import Control.Monad (join)
import GHC.IO (unsafePerformIO)
import Test.Hspec
import Test.Tasty
import Test.Tasty.Hspec

units :: TestTree
{-# NOINLINE units #-}
units =
  -- We shouldn't worry about use of unsafePerformIO here due to how hspec works.
  -- See https://github.com/mitchellwrosen/tasty-hspec/issues/12#issuecomment-271333117
  unsafePerformIO $ testSpec "Unit tests suite" suite

suite :: SpecWith ()
suite = do
  describe "passing tests" $ do
    it "1 must eval to 1" $ do
      1 `shouldBe` 1