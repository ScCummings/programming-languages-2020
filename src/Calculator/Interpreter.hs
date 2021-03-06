module Interpreter where

import AbsNumbers

add :: NN -> NN -> NN
add O n = n
add (S n) m = S (add n m)
-- add (S O) (S (S O))

mult :: NN -> NN -> NN
mult O n = O
mult (S O) n = n
mult (S n) m = add m (mult n m)
-- mult (S (S O)) (S (S ( S O)))

eval :: Exp -> NN
eval (Num n) = n
eval (Plus n m) = add (eval n) (eval m)
eval (Times n m) = mult (eval n) (eval m)
-- eval (Times (Num (S (S O))) (Plus (Num (S O)) (Num (S (S O)))))


