{-# LANGUAGE OverloadedStrings #-}

import System.IO.Streams (InputStream, OutputStream, stdout)
import qualified System.IO.Streams as Streams
import qualified Data.ByteString as S
import Network.Http.Client

data StateResp = { getGrid :: [[Int]]
		 , getScore :: Integer
		 , getPoints :: Integer
		 , isMoved :: Boolean
		 , isOver :: Boolean
		 , hasWon :: Boolean
		 , getSessionID :: String
		 , getZen :: String 
		 } deriving (Show)


main :: IO ()
main = do
    get "http://2048.semantics3.com/hi/start/json" (\p i -> Streams.connect i stdout)

