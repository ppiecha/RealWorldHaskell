import System.Environment (getArgs)

firstWords :: String -> String
firstWords str = (unlines . (map head) . (map words) . lines) str

myTranspose :: String -> String
myTranspose = unlines . transpose . lines

interactWith function inputFile outputFile = do
  input <- readFile inputFile
  writeFile outputFile (function input)

main = mainWith myFunction
  where mainWith function = do
          args <- getArgs
          case args of
            [input,output] -> interactWith function input output
            _ -> putStrLn "error: exactly two arguments needed"

        -- replace "id" with the name of our function below
        myFunction = id