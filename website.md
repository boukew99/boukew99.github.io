# Design

## Site Diagram

by Disk usage Analyzer

## Common elements

-favicon
-style

## Page structure

Next links at end.

## Content
Functional filing. Need a page -> create HTML or MD. Add structure inside page with headers and bold text. Add & integrate media in folder with same name. Extend pages with HTML inside folder with same name. Repeat.

## Linking

Hierarchical zooming (`Go back` for undo)

## Overview & Zooming

When a user enters your site they should get an overview of the page. Minimize scrolling, to minimize overview time. Then the user can decide where to **zoom** for more information. Zooming can be done by loading a new page, as happens on the web when you click a hyperlink, or it could be a smooth zoom, such as on digital maps, which dynamically load in more details as you zoom in, to give you a new overview. Preferably you only want to zoom in, since zooming out means you did not find what you looked for. 

## Interaction

Divide you website into complete distinct pages, so the user has to only load one page and can acces it independently (from any website). Then once we need a form for user input, then just use the provided `<input>` HTML, which needs differnt interaction depending on input type. 

## Source Transparency

The source is fully transparent, since only HTML & CSS & JS is used. This you can inspect(F12).

## Documentation

- <https://developer.mozilla.org/en-US/docs/Web/API>, relevant context of source.
- <https://developer.mozilla.org/en-US/docs/Learn>
- <https://developers.google.com/speed/webp/docs/using>

## Tools

- <https://www.favicon.cc/>, <https://realfavicongenerator.net/>
- <http://www.image-map.net/>
- <https://validator.w3.org/#validate_by_uri+with_options>
- https://cssgradient.io/gradient-backgrounds/?
- <https://www.w3schools.com/colors/colors_picker.asp>
- <https://daringfireball.net/projects/markdown/dingus>
- <https://tinypng.com/>

## Breadcrumb
History navigation feedback, with preview of data to be sent
[x]() / [y]() / [z]()
Breadcrumbs come from the fairy tale of Hansel and Gretel, where Hans left a trail of breadcrumbs to find hisway back. This page also uses the same concept, but here it is for <a href=<https://en.wikipedia.org/wiki/Breadcrumb_navigation>navigating</a> the internet for a particular intention. Functionally it works like a query of several different sources, packed nicely in a list. -> as details tree in Records

### wiki

wiki means fast in hawai.

#### Search link

Knowing the name of a object. Know you can call and talk about it and thus search it. It is an acces point.

https://www.google.com/search?q=Google+tutorial+create+link
https://duckduckgo.com/?t=ffab&q=DuckDuckGo+tutorial+create+link&ia=web

- https://letmegooglethat.com/

#### Dictionary

[dictionary](https://en.wiktionary.org/wiki/dictionary)
<https://en.wikipedia.org/wiki/Wiktionary>

loc
<https://linuxconfig.org/counting-lines-of-code-with-cloc>
or
https://www.geeksforgeeks.org/wc-command-linux-examples/
or https://stackoverflow.com/questions/1358540/how-can-i-count-all-the-lines-of-code-in-a-directory-recursively

## Optimize

https://web.dev/fast/#optimize-your-images

## Guide

https://edu.gcfglobal.org/en/internetbasics/what-can-you-do-online/1/

## Gradient scroll

body {
  height: 3000px;
  background: linear-gradient(141deg, #0fb8ad 0%, #1fc8db 51%, #2cb5e8 75%);
}

## 1D game

- scroll + wait
- gradient bg
- position:fixed

## Procedural map

volcano map: z= (1 + sin(x)+cos(y))^2

## OpenMap

<iframe width="350" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.openstreetmap.org/export/embed.html?bbox=10.288181304931642%2C63.408854223176796%2C10.431518554687502%2C63.44394825645913&layer=mapnik" style="border: 1px solid black"></iframe><br/><small><a href="https://www.openstreetmap.org/#map=14/63.4264/10.3598&layers=DG">View Larger Map</a></small>

## Anchor map/graph

document.links
console.dir(listOfLinks)
for all pages

## Optimize

- https://www.voorhoede.nl/en/blog/why-our-website-is-faster-than-yours/
- images are cached
- Audio bundling/mixing, bundle all audio files into one (ex. undertale 315,1 MB=> 98,9 MB). For ex. travel or relaxing purposes.

## web instrument

[Keys, chords and scales](https://sonic-pi.mehackit.org/exercises/en/09-keys-chords-and-scales/01-piano.html)

## Mics
whitelisting = assumption checking

https://www.uxmatters.com/mt/archives/2007/01/applying-color-theory-to-digital-displays.php
https://www.coreldraw.com/en/tips/postcard/

## firefox design

https://design.firefox.com/
https://design.firefox.com/photon/visuals/typography.html

## Lateral Feedack

- Window bottom light up when clicked something.

## Return income videogame

https://en.wikipedia.org/wiki/Game_demo
https://www.gamesindustry.biz/everything-you-need-to-know-about-making-and-releasing-a-demo


## Type of hackers

- White: Perform penetration testing to promote the security
- Grey: illegaly white
- Black: illegaly malicious
- Blue: Vengeance
- Red: Vigilanties
- Green: Learing

## Recylce Memory

How to cleanup memory after usage? Maybe you want to get back to it and determing when you are done with it is difficult. Only when you are done with a task do you know you can `close all` for that task. But inbetween you might run out of space too, especially if it is a long task 😮️. Therefore, I propose a limited memory space, which you are comfortable using. This will force you to recycle memory spaces if you go over your limit. You can then choose wether you are finished with the task in that memory space or if the new task is more important than the old one. An example could be to set a maximum on browser tabs. You can try it out already by enforcing it yourself.

https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/Working_with_the_Tabs_API

## Email Events

Collect a mailing list for a topic or site, message them to say why to visit the website. Or on site change highlights, only users will know, new users won't care.

## italics

for compact text

## Using keywords to standardize Ctrl-f

find what you need, like google search, but within a document.

* Figure/Table
* context dependent

## Details tree

- open by default

- tree conversation

## Input recording

and playback on a frame by frame basis.

### Linkplace

A marketplace of dynamic links, which presents vendors with a scope from its limited audience. This can be Search, Amazon(without buy pages) and Craigs' list.

## Image portals
Preview a page with an image link.

## Frame Slider
`<input type=range onchange=slide.currentTime=value min=0 max=4 step=0.1>`

## Video-Image controls
`<video autoplay loop muted playsinline width=509 height=392 onclick="if (this.paused) this.play(); else this.pause();" >`

# Bookmarks

## Fun😂️
- https://github.com/acaudwell/Gource/wiki/Controls (sudo apt install gource)
- https://www.jasondavies.com/wordtree/
- https://www.ivoyager.dev/app/planetarium.html

## Insight👁️‍🗨️️

- https://steamdb.info/tech/

## Learning🧐️

[filter | CSS-Tricks - CSS-Tricks](https://css-tricks.com/almanac/properties/f/filter/)

https://gmtk.itch.io/platformer-toolkit/devlog/395523/behind-the-code
https://www.delftstack.com/tutorial/
https://gorillasun.de/blog/a-simple-solution-for-shape-packing-in-2d
[https://github.com/dolphin-emu/dolphin/tree/master/Data/Sys/Shaders] shaders used in dolpin
[Red Blob Games](https://www.redblobgames.com/) is great a learning site till you realize that the visuals are not images, but interactive, which makes it even better!

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
<https://daringfireball.net/projects/markdown/syntax#philosophy>

<https://kemenaran.winosx.com/posts/category-disassembling-links-awakening>: 5 & 11
https://mathew-kurian.github.io/CharacterMap/
https://www.internet-radio.com/
<https://bottosson.github.io/posts/colorpicker/>
chart.js

https://leafletjs.com/

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

<https://www.interrail.eu/en/soundtracks> cool idea, but still boring


https://basecamp.com/features/hill-charts
https://issuu.com/tudelft-mediasolutions/docs/home-of-innovation-projecten-2022

https://archeologie.culture.gouv.fr/chauvet/fr/visiter-grotte

, https://www.hallab.co.jp/eng/creative/process/,
https://www.hallab.co.jp/eng/creative/story/prj001/

http://webglsamples.org/aquarium/aquarium.html

https://www.spaceoffice.nl/nl/satellietdataportaal/
https://www.naturalearthdata.com/
https://visibleearth.nasa.gov/collection/1484/blue-marble?page=2

https://www.littlechicken.nl/oberons-court-textureless-3d-work/

https://digitalagencyrankings.com/iconogen/

https://medium.com/geekculture/how-to-make-your-own-game-engine-and-why-ddf0acbc5f3

https://itch.io/docs/creators/design

https://alexwlchan.net/2022/07/screenshots/
https://en.wikipedia.org/wiki/Inner-platform_effect
