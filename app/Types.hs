module Types where

import qualified Data.Binary.Get as Get
import qualified Data.ByteString as BStr
import Data.Word
import Data.Int

type TagName = String
type TIFFTag = (Int, TagName)

data Endianness = Little | Big
                  deriving Show
data Header = Header
    { byteorder :: (Word8, Word8)
    , magic     :: Word16
    , ifdOffset :: Int16
    }
