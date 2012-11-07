factors :: Int -> [Int]
factors n = [x | x <- [1..n], (mod n x) == 0, n /= x]
prime :: Int -> Bool
prime x = factors x == [1]
primes :: [Int]
primes = [x | x <- [1..], prime x]
getUpTo :: [Int] -> Int -> Int -> Int
getUpTo list1 x n = if list1 !! n < x then getUpTo list1 x (n+1) else n-1
relevantNumbers :: [Int]
relevantNumbers = [primes !! x | x <- [1..(getUpTo primes 2000000 0)]]
main :: IO ()
main = putStrLn (show (sum relevantNumbers))
