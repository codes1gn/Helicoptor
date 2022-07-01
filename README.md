<div align="center">
<h1 align="center">helicoptor</h1>
<br />
<img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-blue.svg" /><br>
<br>
A haskell prototype for functional language of tensor program with an algebraic effect system
</div>

***

### Installation
```
stack build --test
```

### Usage
```
write use command here
```

### Design Thoughts
This is a POC project attempt to explore the possibility that setting up a effect system for side-effects in Tensor programs.

We plan to do this step-by-step:
* build up the algebraic type system for tensor program, and probabilistic tensor
* backend: a mock backend that just use the trivial cpu compute without considering performance
* frontend: a functional user language with full feature of composibility/associativity and other great goods
* build up a effect system for side-effects like: log, var state, autodiff, profiling, concurrency, uncertainty, ...
* trivial data types and function -> refactor with monads -> monadT for combination of monads -> algebraic effect system

Here is the TODOLIST for hands-on stuffs:
* add prim types
* add "add" function for prim types
* set up tests
* ADT building, for tensor, (tensor is a monad with shapes in it)
* calibrate functions to lifted domain

Long-term todo
* MonadT
* AEH: read dependency injection, read zhihu.com/question/300095154 and figure out free monad and algebraic effects

-- | Add
--
-- Examples:
--
-- >>> add (NatNum 10) (NatNum 11)
-- NatNum 21
--
-- >>> add (RealNum 10.1) (RealNum 7.4)
-- RealNum 17.5
--
add :: Computables -> Computables -> Computables 
identity x = case x of
  _ -> x + y

-- | Sub
--
-- Examples:
--
-- >>> sub (NatNum 10) (NatNum 11)
-- NatNum (-1)
--
-- >>> sub (RealNum 10.1) (RealNum 7.4)
-- RealNum 2.7000003
--
sub :: Computables -> Computables -> Computables 
sub (RealNum x) (RealNum y) = RealNum (x - y) 
sub (NatNum x) (NatNum y) = NatNum (x - y) 

-- | square
--
-- Examples:
--
-- >>> square (NatNum 10)
-- NatNum 100
--
-- >>> square (RealNum 1.1)
-- RealNum 1.21
--
square :: Computables -> Computables 
square (RealNum x) = RealNum (x * x) 
square (NatNum x) = NatNum (x * x) 

### Contributing

### License
This project is licensed under the MIT license
### Show your support
Leave a ⭐ if you like this project

***
Readme made with 💖 using [README Generator by Dhravya Shah](https://github.com/Dhravya/readme-generator)
