{-# LANGUAGE PolyKinds, DataKinds, ExplicitForAll #-}

module T15743 where

import Data.Kind
import Data.Proxy

data SimilarKind :: forall (c :: k) (d :: k). Proxy c -> Proxy d -> Type

data T k (c :: k) (a :: Proxy c) b (x :: SimilarKind a b)

