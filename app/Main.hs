module Main where

import qualified Data.ByteString.Lazy as BL
import Data.Binary.Get
import Data.Word
import Data.Maybe

import Parser
import Constants

main :: IO ()
main = do
    file <- BL.readFile "samples/16mp/e-m1.orf"
    print (fromJust (checkByteOrder (runGet getWord16le file)))
