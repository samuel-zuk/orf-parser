module Constants where

import Types
import Data.Bits
import Data.Char
import Data.Word

tiffTagTable :: [TIFFTag]
tiffTagTable = [(254, "NewSubfileType"),
                (255, "SubfileType"),
                (256, "ImageWidth"),
                (257, "ImageHeight"),
                (258, "BitsPerSample"),
                (259, "Compression"),
                (262, "PhotometricInterpretation"),
                (263, "Thresholding"),
                (264, "CellWidth"),
                (265, "CellLength"),
                (266, "FillOrder"),
                (270, "ImageDescription"),
                (271, "Make"),
                (272, "Model"),
                (273, "StripOffsets"),
                (274, "Orientation"),
                (277, "SamplesPerPixel"),
                (278, "RowsPerStrip"),
                (279, "StripByteCounts"),
                (280, "MinSampleValue"),
                (281, "MaxSampleValue"),
                (282, "XResolution"),
                (283, "YResolution"),
                (284, "PlanarConfiguration"),
                (296, "ResolutionUnit"),
                (305, "Software"),
                (306, "DateTime"),
                (315, "Artist"),
                (33432, "Copyright"),
                (34665, "ExifIFDPtr"),
                (34853, "GPSIFDPtr")]

tiffLittleEndian :: Word16
tiffLittleEndian = fromInteger (toEnum ((shift (ord 'I') 8) + ord 'I'))
tiffBigEndian :: Word16
tiffBigEndian = fromInteger (toEnum ((shift (ord 'M') 8) + ord 'M'))

-- tiffDataTypeTable = [
