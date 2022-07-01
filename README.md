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
This is a POC project attempt to explore the possibility that
* setting up a zoo of algebraic type system for Tensor and its operations
* setting up a effect system for wrapping side-effects in Tensor programs.

We plan to do this step-by-step:
* build up the algebraic type system for tensor program, and probabilistic tensor
* backend: a mock backend that just use the trivial cpu compute without considering performance
* frontend: a functional user language with full feature of composibility/associativity and other great goods
* build up a effect system for side-effects like: log, var state, autodiff, profiling, concurrency, uncertainty, ...
* trivial data types and function -> refactor with monads -> monadT for combination of monads -> algebraic effect system

Here is the TODOLIST for hands-on stuffs:
* add prim types and tensor family
* sort out design patterns with newtype, class, data.kinds, subtyping, HList
* add "add" function for prim types
* set up tests
* ADT building, for tensor, (tensor is a monad with shapes in it)
* calibrate functions to lifted domain

Long-term todo
* MonadT
* AEH: read dependency injection, read zhihu.com/question/300095154 and figure out free monad and algebraic effects


### Contributing

### License
This project is licensed under the MIT license
### Show your support
Leave a ⭐ if you like this project

***
Readme made with 💖 using [README Generator by Dhravya Shah](https://github.com/Dhravya/readme-generator)
