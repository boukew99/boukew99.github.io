# Visual programming

From reading to seeing.

## Visual Ouput

Geometry is well represented with mathematics. Once text and images start to be added, becomes the output more conditional, because these outputs have limited states. A range can be translated to these limited states by seting ranges for distinct intervals, though this will still have no continious feedback.

## Programming Languages

Syntax is the interface to the instruction of the machine. Like any syntax at its best when it becomes invisible, meaning here that it directly translates to some instruction sequence in the machine.

With the introduction of context a tree can be made out of the sequence.

With the introduction of state a network can be made out of the sequence. This introduces the complexity of asynchronousy.


## Boo-Libary

A practical implementation.

### Boo-Lang(uage)

Combining language ergonomics with programm possibilities.

#### Solved defintions

These definitions can used as is. They are in orderer of complexity:

- bool: `0` and `1`, `true` and `false`, `yes` and `no`

- int

- char   

- string

- text

- float

- image

- audio

- video

#### Naming

A name can be one word preferably or else multiple words bound with `-`. It will act as a meaningfull reference to an definition.

##### Conversion

Only regressive conversion is defined since lower level definitions can be represented as themselves in higher level representations.

float to int: truncate

int to bool: range divide

text to string: select newline

string to char: select char

#### Unsolved defintions

**Functions** take some parameter, which they need to solve the definitions. `y = x**2 -1` is a variable that is a function if x is not defined yet. Once `x` is defined `y` can be solved and thus can be used just as a solved definition. Though the value of a function is in the reuse and thus if `x` is changed `y` will also get a new solution. So `x` acts as a implicit parameter.

#### In-between Solvers

These make **one** definition from **two** definitions, so they rest in-between.

Symbolizing helps for shorter statements with the trade-off of more memorization, which is nullified by usage versatility. Thus here you can use both for the same results.

- add: `+`

- subtract: `-` or `+0-`

- mulitply: `*` or `++`

- divide: `/` or `*1/`

- exponentiation: `^` or `**` or `+++`

- logarithm: `//` or `^1/`

- concatenate: `,` (thus a list is a concatenation of defintions)

- smaller-than: `<` (sequenceable 0 < x < 100)

### Example

```boo
A file is a class!

# Inheritance

extends BaseClass

library = boo-files/library.boo load

# Solved defintions (constants)

integer = 5
string = Hello
list = 1 , 2 , 3 # enum, vector-N
dictionary = key : value , 2 : 3 # data-class

# Unsolved definitions (Function)

x = 0 < x < 100 # clamp between 0 and 100
f = x^2 - 2*x - 1

x = f { # condition
    # exclusive flow
    u = 5 # local
    x = 9 # cannot change x
}
x = 9 # changes f also
f = 9 # overwrite means f was false

x, y + a, b # x + a ant y + b

for i in range(20):
    print(i)
while param2 != 0:
   param2 -= 1
```

### Boo GUI(Graphical User Interface)

An Image of the functionality of the programm. A picture tells a thousand words and thus you don't need to read the whole code of the programm.

#### Visuals - Pyramid drawing

First populate the **draw stack** for one frame. This will come from parsing the scope **tree sequentially**. The **order** determines what stays on top. Childeren will **inherit parents position**, so they will be defined relatively, which allows the drawer to continue from its end position (works well with pop and push in OpenGL). Then you can draw the frame in one go. To **optimize** only a subset of the frame is redrawn, thus we need a entry point for a sub-rectangle. This will be lazy drawing, coming naturally from lazy computing. Also an image of the full interface in optimal size will be provided, which provides an initial optimization, but also can be used for editing image themes and a bootsplash.

The screen only redraws on an activation. Thus no mouse-over events, brining touchscreen and mouse closer together.

Preferably all controls are visible only being constrained by limited space, which can be solved with scroll-container.

Templates for visuals, provided through images. More complex templates can combine icons, buttons, text, backgrounds and slide handle images.

#### Physics

Visuals and Physics overlap in that they both define an area rectangle, where the visuals indicate the physics interactable area and an identity of the function. The layout can automatically be constructed by defining some hints and populating the draw stack. Interactable areas will have no overlap :) .
