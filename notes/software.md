# Software

Dealing with memory.

## Inclusive or Universal Software

Some considerations

- Language is culture depedent and requires the effort of localization to transcend that.
- Effective programs with small size and computing requirements make it device independent. Mainly audio and visuals increase size. GPU calculation increase computing requirements.

### Games specific

- Only lock is your skill. Arcade games have this, but with upfront cost.
- Allow for own creative expansion/expression
- hospitality 
- kid friendly

## Respecting the default

<https://grugbrain.dev/#grug-on-chestertons-fence>

## software evolution process

?

## Files

Everything is just stored as a file. extension don't matter for filesystem, they just describe different dimensions (of a folder).

## get, set, met function

var name = something
function name(): return something
function name(something): name = something
function name(..., ..., ..., ...): advanced subroutine

repeat <-while,for

## Extra-Ordinary Programming

Code extremely obvious actions.

## Self-organizing foldering

- Define files localy 

### Recursive list

Combining accesibility of list with the structure of a tree.

## Physics

### Intersection stages

* Spherical (cheapest) 
* AABB (Axis Alligned Bounding Box)
* OOB (Oriented Bounding Box)
* Triangle (most expensive)

## LITE

Software without the bells and whistles.

## Self-Defining

### Fibonacci Sequence

Or 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
Or $$ F_n = F_n-1 + F_n-2 $$ <!--https://math.meta.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference-->
Or ![Fibonacci spiral](https://upload.wikimedia.org/wikipedia/commons/7/79/Fibonacci_spiral.svg)
Or the golden ratio of 1.61803 39887
This sequence has intersting properies and defined by adding its previous value and its previous previous value. So it is defined by itself in the past. 

### Object

When is something a object. In terms of data structures it is often a encapsulation of sorts. Though often this data structure can just be reduces to a list, where its compents are independent of each other. Only when you define a value based on another property does encapsulation happen. So an object comes to be once it starts defining new properties from its own properties. Your hand being defined by the lower arm and them both again being defined by your upper arm, for example. It also correlates with what we think of a significance difference in size with vision.

## Design

- web aquarium with 1 fish <- food sacks which fish swim too and multiply with on refresh
- web breaker -> completed time -> refresh, everything is a breaker block, the walls, the bouncer just with differnt hp
- Progress bar chunks, with range / chunks. Optional snap to chunks. Now a minsize.
- pen -> dpi / 4
- "Note" column
- https://en.wikipedia.org/wiki/ELIZA - with <input text> and <p>response</p>
- inline form, context of instruction, unit and sequence.
- mini-form. Card with just one radio buttons list. Feedback, reading place, interestin.

adapting database
: rating <- current_rating + new_rating / total_rating + 1 
: 3 data points
: anonomous
: infinite recursions

## Recursive pathfinding

![illustration](recursive_pathfinding.svg)
This is one iteration of finding the shortest path to a destination with no direct connection, which would be the shortest path. This showcases a path through another node seperating the route into 2, though still being completely connected. This node is chosen, because it has the shortest perpendicular distance to the shortest path. Now you can apply the same operation onto these two paths to get an potentialy even shorter path by increasing level of detail. This can be iterated until satisfied by the performance measured by `new_path / shortest_path` or by reaching a maximal level of detail. This can optionally be extended by adding weights to each path to simulate path friction.

## Machine learning

Since we are dealing with learning here there will be no truths, only probabilities of linked input and outputs, which is the realm of statistics and thus we find techniques such as logistic regression. There will be no information of the underlying mechanics of these relationships, only a probability that there exist an relationship, which may be deemed significance on some needed certainty level.

## Content within the rules

Have you ever noticed the explosion in content building in the game developers process? How is it that you hear that most of the game was made just in the last part of development? In my own development I noticed a pattern. First I would make the rules the game would use. These are very minimal and are not gameplay yet. Then I would make a minimal level, serving only to test the rules and refine them, through iterating and you can iterate a lot since the game is still so small. Then time decides when the rules are done, which is when you expand the game by filling it with content. All the content will fit into the rules you created, which are defined by the quality of the rules. From here on changing the rules is unruly. Content can still be added, but new requires a new game (which can be a sequel).

## Evolving classes

A class has a range of input and output in its first iteration. Then to evolve the class a new class is created by inheritance. This class should evolve the inherited class by widening its input or constraining its output, this is the only direction it can evolve without invalidating its superclass. If it is invalidated it is a revolution.

> You should always be able to treat a subclass object as if it were an instance of the superclass, per the principle of sustitutability. - Design by Contract
> Thus it is easy to see the direction of an optimal class. An optimal class has the widest input for flexibility, but the most constrained output for reliability. This mirrors the neurons in our brain and is why functions only return one thing, but can have multiple inputs.

## Versioning

Game series look different for each unique individual game, but there are also a lot of recurring themes. This is what makes it a series, but what underlies that is the versioning (evolution) of the same title. What we see as a new game is just a major version release, as in Game 1, then Game 2  (though it is better for the player to give the release a more descriptive name of what this version contains). Underneath those major releases are smaller evolutions, leading to a bigger release, such as Game 1.2 or Game 1.2.1. One way to do this is with [semantic versioning](https://semver.org/) [used by Godot Engine](https://docs.godotengine.org/en/stable/about/release_policy.html).

For games it can be like:

1. Release

2. Step towards new release

3. Step towards 2 and so on. 

## Shaders

### Demoscene

https://en.wikipedia.org/wiki/Demoscene#groups
Groups always have names, and similarly the individual members pick a handle by which they will be addressed in the large community. ... in the demoscene it mostly serves as a manner of self-expression

<https://iquilezles.org/> tutorials

### Shader Toy 🎨

https://godotshaders.com/author/db0/
https://www.shadertoy.com/view/wslcDf / https://godotshaders.com/shader/rorschach-ink-test/
https://www.shadertoy.com/view/XlBBWG / https://godotshaders.com/shader/pentagonal-tesselations/
https://www.shadertoy.com/view/WdScRW
https://www.shadertoy.com/view/3l23Rh

https://www.shadertoy.com/embed/4dlGDN

## Publishing

Traditionally this was a job in itself. Now with the internet it is possible to self-publish. There are a couple phases you have to setup:

1. have the game source ready and be playable on its own. 

2. have a grabbing title.

3. have an exciting description.

4. have cover art.

5. have a transparent gameplay video (easiest interaction .

6. have a themed online publishing page with all exports.

7. (optionally add a content-less demo)

## Foldering

When foldering the ergonomics are determined by the minimal changes of file-path length between navigation. One way to do is with a structure of configure/organize/structure/content.

## Relationships

### Data structure

```json
Network = {
    A : [B , C , D , E]
    B : [C , E]
    C : [D]
    D : [A, B]
    E : [A, C]
}

Tree-of-A = {
    A : [B , C , D , E]
}

Tree-of-B = {
    B : [C , E]
    C : [D]
    E : [A]
}

List-of-A = [B , C , D , E]

List-of-B = [C,E]
```

### Visualization

types of visualization:

- network
  
  - tree (header + text-lines)
    
    - list (text-lines)
      
      - point   
        
        - properties
          
          - values
