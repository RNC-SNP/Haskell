module Geometry.Cuboid
( volume
, area
) where

volume :: Float -> Float -> Float -> Float
volume a b c = retangleArea a b * c

area :: Float -> Float -> Float -> Float
area a b c = retangleArea a b * 2 + retangleArea a c * 2 + retangleArea b c * 2

retangleArea :: Float -> Float -> Float
retangleArea a b = a * b
