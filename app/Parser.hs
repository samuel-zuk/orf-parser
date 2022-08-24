module Parser where

import Data.Maybe
import Data.Word

import Types
import Constants

checkByteOrder :: Word16 -> Maybe Endianness
checkByteOrder w | w == tiffLittleEndian = Just Little
                 | w == tiffBigEndian    = Just Big
                 | otherwise             = Nothing

