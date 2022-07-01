module Helicoptor.Type where

data Dtype = Float
           | Int
  deriving (Eq, Show)

data Shape 
  = UnitShape
  | D1Shape Int
  | D2Shape Int Int
  | D3Shape Int Int Int
  | D4Shape Int Int Int Int
  deriving (Eq, Show)

data Tensor = Tensor {
    dtype :: Dtype
  , shape :: Shape }
  deriving (Show)


---- Section: util functions for dtype
--
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


--
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



---- Section: util functions for shape
-- >>> D4Shape 32 16 16 32
-- D4Shape 32 16 16 32
-- >>> D1Shape 16
-- Shape 16


