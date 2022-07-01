import Test.DocTest

main :: IO ()
main = doctest [
    "-isrc", 
    "src/Helicoptor/Type.hs",
    "src/Helicoptor/Math.hs"]
