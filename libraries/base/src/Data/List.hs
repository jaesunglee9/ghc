{-# LANGUAGE Safe #-}

-- |
--
-- Module      :  Data.List
-- Copyright   :  (c) The University of Glasgow 2001
-- License     :  BSD-style (see the file libraries/base/LICENSE)
--
-- Maintainer  :  libraries@haskell.org
-- Stability   :  stable
-- Portability :  portable
--
-- Operations on lists.
--

module Data.List
    (List,
     -- *  Basic functions
     (++),
     head,
     last,
     tail,
     init,
     uncons,
     unsnoc,
     singleton,
     null,
     length,
     -- *  List transformations
     map,
     reverse,
     intersperse,
     intercalate,
     transpose,
     subsequences,
     permutations,
     -- *  Reducing lists (folds)
     foldl,
     foldl',
     foldl1,
     foldl1',
     foldr,
     foldr1,
     -- **  Special folds
     concat,
     concatMap,
     and,
     or,
     any,
     all,
     sum,
     product,
     maximum,
     minimum,
     -- *  Building lists
     -- **  Scans
     scanl,
     scanl',
     scanl1,
     scanr,
     scanr1,
     -- **  Accumulating maps
     mapAccumL,
     mapAccumR,
     -- **  Infinite lists
     iterate,
     iterate',
     repeat,
     replicate,
     cycle,
     -- **  Unfolding
     unfoldr,
     -- *  Sublists
     -- **  Extracting sublists
     take,
     drop,
     splitAt,
     takeWhile,
     dropWhile,
     dropWhileEnd,
     span,
     break,
     stripPrefix,
     group,
     inits,
     tails,
     -- **  Predicates
     isPrefixOf,
     isSuffixOf,
     isInfixOf,
     isSubsequenceOf,
     -- *  Searching lists
     -- **  Searching by equality
     elem,
     notElem,
     lookup,
     -- **  Searching with a predicate
     find,
     filter,
     partition,
     -- *  Indexing lists
     -- |  These functions treat a list @xs@ as an indexed collection,
     -- with indices ranging from 0 to @'length' xs - 1@.
     (!?),
     (!!),
     elemIndex,
     elemIndices,
     findIndex,
     findIndices,
     -- *  Zipping and unzipping lists
     zip,
     zip3,
     zip4,
     zip5,
     zip6,
     zip7,
     zipWith,
     zipWith3,
     zipWith4,
     zipWith5,
     zipWith6,
     zipWith7,
     unzip,
     unzip3,
     unzip4,
     unzip5,
     unzip6,
     unzip7,
     -- *  Special lists
     -- **  Functions on strings
     lines,
     words,
     unlines,
     unwords,
     -- **  \"Set\" operations
     nub,
     delete,
     (\\),
     union,
     intersect,
     -- **  Ordered lists
     sort,
     sortOn,
     insert,
     -- *  Generalized functions
     -- **  The \"@By@\" operations
     -- |  By convention, overloaded functions have a non-overloaded
     -- counterpart whose name is suffixed with \`@By@\'.
     --
     -- It is often convenient to use these functions together with
     -- 'Data.Function.on', for instance @'sortBy' ('Prelude.compare'
     -- ``Data.Function.on`` 'Prelude.fst')@.

     -- ***  User-supplied equality (replacing an @Eq@ context)
     -- |  The predicate is assumed to define an equivalence.
     nubBy,
     deleteBy,
     deleteFirstsBy,
     unionBy,
     intersectBy,
     groupBy,
     -- ***  User-supplied comparison (replacing an @Ord@ context)
     -- |  The function is assumed to define a total ordering.
     sortBy,
     insertBy,
     maximumBy,
     minimumBy,
     -- **  The \"@generic@\" operations
     -- |  The prefix \`@generic@\' indicates an overloaded function that
     -- is a generalized version of a "Prelude" function.
     genericLength,
     genericTake,
     genericDrop,
     genericSplitAt,
     genericIndex,
     genericReplicate
     ) where

import GHC.Internal.Data.List
