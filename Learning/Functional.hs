module Functional where

data Point = Point { getX :: Double
                   , getY :: Double }
  deriving Show

data OtherPoint = OtherPoint { oGetX :: Double
                             , oGetY :: Double }
  deriving Show

{--
f a b c = Point a' b'
  where
    cX = getX c
    cY = getY c
    a1 = 4 * cos c
    a2 = 4 * sin c
    a' = a1 * cX + a2 * cY
    b' = 0
--}

-- a -> Double -> {Double, Double}

-- l = [1,4,123,12241,3,123,1]
-- j = filter odd l
-- k = map (+2) j
-- m = takeWhile (< 4)

-- n = takeWhile (< 4) . map (+2) . filter odd

headSafe :: a -> [a] -> a
headSafe a [] = a
headSafe _ (h:_) = h

headEither :: (Eq a) => [a] -> Either String a
headEither l
  | l == [] = Left "Can't get head of empty list"
  | otherwise = Right $ head l

headMaybe :: [a] -> Maybe a
headMaybe [] = Nothing
headMaybe (h:_) = Just h

--[Double] == [] Double
