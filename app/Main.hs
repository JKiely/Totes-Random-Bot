module Main where

import Bot
import API
import Control.Concurrent (threadDelay)

main :: IO ()
main = tweetLoop


tweetLoop = do bits <- getNewBits
               float <- getNewFloat
               tweet bits
               threadDelay $ ceiling ((read float :: Double) * 86400000000.0)
               tweetLoop
