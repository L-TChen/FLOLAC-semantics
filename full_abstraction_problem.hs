{-# LANGUAGE UnicodeSyntax #-}

{-
(||) :: Bool -> Bool -> Bool
(||) _ False   = False
(||) _ _ = True-}

bot :: a 
bot = undefined

ifthen :: Int -> a -> a 
ifthen i result = if (i == 0) then result else bot 

portest :: Int -> (Int -> Int -> Int) -> Int
portest i f = let leftz   = f 0 bot
                  rightz  = f bot 0
                  pred' x = if (x > 0) then bot else ifthen (x - 1) 0
              in ifthen leftz $ ifthen rightz $ if (f 1 1) == 1 then i else bot

por :: (Int,Int) -> Int
por (_, 0) = 0
por (0, _) = 0
por (1, 1) = 1

fix :: (a -> a) -> a
fix g = g (fix g)