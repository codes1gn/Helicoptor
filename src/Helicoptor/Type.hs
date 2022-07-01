{-# LANGUAGE GADTs #-}

module Helicoptor.Type where

-- | Dtype for compute
data Dtype = Float
           | Int
  deriving (Eq, Show)

-- | Shape type with less or equal then 4 Ranks
---- Section: util functions for shape
-- >>> D4Shape 32 16 16 32
-- D4Shape 32 16 16 32
-- >>> D1Shape 16
-- D1Shape 16
data Shape 
  = UnitShape
  | D1Shape Int
  | D2Shape Int Int
  | D3Shape Int Int Int
  | D4Shape Int Int Int Int
  deriving (Eq, Show)

-- | Tensor type
--
-- 
-- >>> Tensor Int UnitShape
-- Tensor Int UnitShape
data Tensor where
  Scalar :: Tensor
  Index  :: Tensor
  Vector :: Dtype -> Shape -> Tensor
  Matrix :: Dtype -> Shape -> Tensor
  Tensor :: Dtype -> Shape -> Tensor
    deriving (Show)
--  | Index
--  | Vector {
--    dtype :: Dtype
--  , shape :: Shape }
--  | Matrix {
--    dtype :: Dtype
--  , shape :: Shape }
--  | Tensor {
--    dtype :: Dtype
--  , shape :: Shape }


-- | Computables Type that can be computed
--
-- currently, we only handles float type and int Type
-- for computation.
--
-- >>> assertFloatType Float
-- True
--
-- >>> assertFloatType Int
-- False
--
assertFloatType :: Dtype -> Bool
assertFloatType t = case t of
  Float -> True
  _ -> False

-- | Computables Type that can be computed
--
-- >>> assertIntType Float
-- False
--
-- >>> assertIntType Int
-- True
--
assertIntType :: Dtype -> Bool
assertIntType t = case t of
  Int -> True
  _ -> False


-- | getDtype
--
-- >>> t = Tensor Int UnitShape
-- >>> d = getDtype t
-- >>> assertIntType d
-- True
--
-- >>> t = Tensor Float UnitShape
-- >>> getDtype t
-- Float
--
-- >>> t = Tensor Int UnitShape
-- >>> getDtype t
-- Int
-- 
-- >>> t = Tensor Int UnitShape
-- >>> getDtype t
-- Int
getDtype :: Tensor -> Dtype
getDtype (Tensor x _) = x

-- | getShape
--
-- >>> t = Tensor Int (D2Shape 16 8)
-- >>> getShape t
-- D2Shape 16 8
getShape :: Tensor -> Shape
getShape Scalar = UnitShape
getShape Index = UnitShape
getShape (Vector _ x) = x
getShape (Matrix _ x) = x
getShape (Tensor _ x) = x



