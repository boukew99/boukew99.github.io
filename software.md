# Software

Dealing with memory.


## get, set, met function

var name = something
function name(): return something
function name(something): name = something
function name(..., ..., ..., ...): advanced subroutine

repeat <-while,for


## Physics

### Intersection stages

* Spherical (cheapest) 
* AABB (Axis Alligned Bounding Box)
* OOB (Oriented Bounding Box)
* Triangle (most expensive)

## Type of hackers

- White: Perform penetration testing to promote the security
- Grey: illegaly white
- Black: illegaly malicious
- Blue: Vengeance
- Red: Vigilanties
- Green: Learing

## Procedural map

volcano map: z= (1 + sin(x)+cos(y))^2

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



## Publishing

Traditionally this was a job in itself. Now with the internet it is possible to self-publish. There are a couple phases you have to setup:

1. have the game source ready and be playable on its own. 

2. have a grabbing title.

3. have an exciting description.

4. have cover art.

5. have a transparent gameplay video (easiest interaction .

6. have a themed online publishing page with all exports.

7. (optionally add a content-less demo)


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

## Sequential tree

list in tree, draw list, parallizable, draw till list stops (at 2), functional/recursive list

- 1
  - 2
    - 3
      - 4
        - 5
          - 6
            - 7
              - 8    
                - 9
  - 2.2


### Recursive list

Combining accesibility of list with the structure of a tree.

## Recylce Memory

How to cleanup memory after usage? Maybe you want to get back to it and determing when you are done with it is difficult. Only when you are done with a task do you know you can `close all` for that task. But inbetween you might run out of space too, especially if it is a long task 😮️. Therefore, I propose a limited memory space, which you are comfortable using. This will force you to recycle memory spaces if you go over your limit. You can then choose wether you are finished with the task in that memory space or if the new task is more important than the old one. An example could be to set a maximum on browser tabs. You can try it out already by enforcing it yourself.

https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/Working_with_the_Tabs_API

## Lateral Feedack

- Window bottom light up when clicked something.

#### Dictionary

[dictionary](https://en.wiktionary.org/wiki/dictionary)
<https://en.wikipedia.org/wiki/Wiktionary>

loc
<https://linuxconfig.org/counting-lines-of-code-with-cloc>
or
https://www.geeksforgeeks.org/wc-command-linux-examples/
or https://stackoverflow.com/questions/1358540/how-can-i-count-all-the-lines-of-code-in-a-directory-recursively

# Bookmarks

## Fun😂️
- https://github.com/acaudwell/Gource/wiki/Controls (sudo apt install gource)
- https://www.jasondavies.com/wordtree/
- https://www.ivoyager.dev/app/planetarium.html

## Insight👁️‍🗨️️

- https://steamdb.info/tech/ / https://steamdb.info/tech/Engine/Godot/

## Learning🧐️

[filter | CSS-Tricks - CSS-Tricks](https://css-tricks.com/almanac/properties/f/filter/)

https://gmtk.itch.io/platformer-toolkit/devlog/395523/behind-the-code
https://www.delftstack.com/tutorial/
https://gorillasun.de/blog/a-simple-solution-for-shape-packing-in-2d
[https://github.com/dolphin-emu/dolphin/tree/master/Data/Sys/Shaders] shaders used in dolpin

- https://isaackarth.com/papers/wfc_is_constraint_solving_in_the_wild/
  <https://www.netmotionsoftware.com/blog/connectivity/how-does-data-compression-work>
  <https://www.youtube.com/watch?v=Lto-ajuqW3w>
  and DRY?
- http://www.learnsanskrit.org/
- <http://www.learnyouahaskell.com/g>
- https://soranews24.com/2013/09/17/ninja-language-skills-boost-your-japanese-with-the-power-of-onomatopoeia/ 
  [git book](https://git-scm.com/book/en/v2)
  <https://www.playerresearch.com/learn/>
  <https://marctenbosch.com/quaternions/>

  http://howtomakeanrpg.com/a/how-to-make-an-rpg-stats.html
  https://thebookofshaders.com/05/



## Resources📦

- [WikiMedia Commons](https://commons.wikimedia.org/wiki/Main_Page)

- [FreePats project](https://freepats.zenvoid.org/index.html) sound bank of unique instruments.

- [Philharmonia sound samples](https://philharmonia.co.uk/resources/sound-samples/) It includes all standard orchestral instruments, as well as guitar, mandolin, banjo, and a vast array of different percussion instruments.

- https://polyhaven.com/

- https://www.si.edu/openaccess

- https://ambientcg.com/

- https://flatuicolors.com/

- https://lospec.com/
- https://hyves-smileys.immerblei.com/
- https://towardsdatascience.com/40-open-source-audio-datasets-for-ml-59dc39d48f06

- https://freesound.org/people/klankbeeld/sounds/243473/
  <https://commons.wikimedia.org/wiki/Main_Page>
  <https://upload.wikimedia.org/wikipedia/commons/8/8f/Cycling_%28track%29_pictogram.svg>
  Olympic pictograms!
  [blue marble NASA images](https://visibleearth.nasa.gov/collection/1484/blue-marble) A catalog of NASA images and animations of our home planet.


## Tools🛠️

https://ebsynth.com/
https://morsecode.world/international/translator.html
https://www.text2speech.org/
https://www.scribbr.com/apa-citation-generator/
http://www.boundingboxsoftware.com/materialize/index.php


## Plants🪴️

https://drgreen.nl/

## Uncatgorized / maybe read someday

https://bossfightbooks.com/
https://aikoncwd.itch.io/sprite-generator
https://www.timeanddate.com/astronomy/night/netherlands/eindhoven
https://www.theoryoffun.com/
CIE 1931 x-y chromaticity diagram

https://www.w3schools.com/tags/ref_keyboardshortcuts.asp

<https://kemenaran.winosx.com/posts/category-disassembling-links-awakening>: 5 & 11
https://www.internet-radio.com/
<https://bottosson.github.io/posts/colorpicker/>

https://anvaka.github.io/peak-map/#7.68/47.722/-122.237
https://weatherspark.com/

<https://apod.nasa.gov/apod/archivepix.html>
[webb](https://www.nasa.gov/sites/default/files/thumbnails/image/main_image_star-forming_region_carina_nircam_final-5mb.jpg)
<https://www.redblobgames.com/x/2203-reaction-diffusion/>
[Fractal drawing](https://www.youtube.com/watch?v=sFEYQMrWNHU>)
<https://en.wikipedia.org/wiki/Fractal_compression>
The Colours of Infinity documentary
<https://www.der-mond.de/homepagetool/moon-current-for-your-website/design-luna-calendar>mix instruction and form
<https://fasterthanli.me/articles/a-half-hour-to-learn-rust>


https://basecamp.com/features/hill-charts
https://issuu.com/tudelft-mediasolutions/docs/home-of-innovation-projecten-2022

https://archeologie.culture.gouv.fr/chauvet/fr/visiter-grotte

, https://www.hallab.co.jp/eng/creative/process/,
https://www.hallab.co.jp/eng/creative/story/prj001/

https://www.spaceoffice.nl/nl/satellietdataportaal/
https://www.naturalearthdata.com/
https://visibleearth.nasa.gov/collection/1484/blue-marble?page=2

https://www.littlechicken.nl/oberons-court-textureless-3d-work/

https://chronotrains-eu.vercel.app/

https://www.interrail.eu/en/plan-your-trip/sustainable-tourism-europe/why-train-is-best-option
https://itch.io/docs/creators/design

https://alexwlchan.net/2022/07/screenshots/
https://en.wikipedia.org/wiki/Inner-platform_effect


## Hardware
Allowing static components to build software on. Preferably it remeans solid and minimal as changing is expensive.
Added to the processor are input and output, which come in different forms. 

### Imaginary Ideal computer
Tablet with keyboard mat overlay, based on pressure input.
- Micro-usb output to desktop display
- Mouse/stylus/pointer/IR/joypad input
- Smooth browsing
- WebOS
- Slow, but steady and efficient performance
- Passive cooling 
- silent
- over 4 hours battery life
- Phone (small) charger
- 720p or golden-ratio
- repairable 
- physical IO
- minimum storage + shared cloud storage

<https://www.gadgetoid.com/2020/12/23/star-labs-lite-mkiii-reviewed/> / <https://www.gadgetoid.com/2022/07/05/starlabs-star-lite-mk-iv-review/>

### Specialized computing
- discrete GPU
- Desktop screen
- TV screen.
- Realtime Games
- Server storage
better to share it.

### Components
- laptop: keyboard & mouse editing, creation, connector
- mobile: transactions, consuming
- byte: computing power
- tv screen: shared visuals
- desktop screen: second screen
- bootable USB drive: portable memory

