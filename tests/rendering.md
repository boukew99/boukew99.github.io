# # Rendering

Outputting a dynamic image. Utilising perception or `recognition over recall`. All will follow from that. 

## Scrolling

The display area has gotten too big to fit onto the screen, so to still be able to see it you can scroll the view to the cut off area. Sequential images can be wrapped though and thus limit scrolling only to one dimension.

## Zooming out

The image should be seen as a whole, but it is to fit onto the screen. So now we have to zoom out though you won’t see all the information, you will still have an overview. To access more information we can zoom in on a particular area, but not past the native pixel size. 

## Drawing

By hand you would keep it stateful. 

- Shaping, soft lines

- Outlining, hard lines

- Colouring, smearing polygons and sequential colour picking

- Shading, transparent grey shades

- Animating, union skinning previous frame and reusing picked colours

- Background

The pixel coordinates will be defined by positive integers x & y starting from the sequential top-left corner. The x direction goes to the right and comes first. The y direction comes second and goes down. 

```
WhiteImage = GenerateFilledImage(white)

GradientImage = GenerateFilledImage(white, black)

ScaleImage = GenerateMipsMapsImage(path-to-power-2-image)

Image = LoadImage(path)

SetImage(Node, Image) # RenderingTree handles transform
```

## Animating

There is colour animation, which keeps all the pixels in the same place and only changes their colour data, and there are transform animations, which translate and rotate and scale and skew a group of pixel data. 

### Colour animation

Since only colour data is changed, no pixel data is moved around, just like the physical screen pixels. Therefore you don’t have to clear the frame, you can just draw over it, because every pixel has a fixed place.

Resizing is also still possible if horizontal and vertical axes remain separately  resizeable, since then you just extend the boxes in the layout among those axes. 

### Transform animations

Only shape can be transformed, so you need to define a bundle of pixels called an image. But after you transform, the shape is different and the original physical pixels are not in it anymore. This means you are working with image data at a higher level and not pixel/colour data. Therefore we need to clear the previous shape and then draw the new shape on top of that.

## Communicating re-draws

The rendering state can be described as a tree. Now parts that don’t move don’t need to be redrawn, but ones that do move need to be cleared of their trail. Ideally only the parent has to redraw part of itself assuming the mover is inside its area. This also means the root can’t move since it has no parent to clear itself. Thus we can pass on which nodes in the tree have to be redrawn and the rendering will recursively re-draw.

# Physics

> All physics interactions approximate a circle, with different emphasis of its infinite edges.

- The most minimal shape is a point with only a position (and a fixed smallest size). 

- Add a radius to that to get a circle.

- Add another (perpendicular) radius to get a rectangle.

- Another radius (with equal angle differences) for a triangle.

- And so on.

```
Shape1 = GetPhysicsShape(position1, [radiuses1])

Shape2 = GetPhysicsShape(position2, [radiuses2])

CheckCollision(Shape1, Shape2)
```



## Tree structure

Forms:

- Output.Image(path) # Rectangle Free within
  - Output.Label(Instance.Name😊) # Sequenceable Non-overlapping rectangle
    - Output.Button(Instance.Foo) # Clickable
      - Output.text(Instance.Description) # wrap

Instance:

- Output.Image(Background) #Resizable Window
  - Output.Button(Open) # Horizontal ToolBar
    - Output.Button(New)
      - Output.Button(Overwrite)
  - Output.Label(Item1) # Vertical List
    - Output.Label(Item2)
      - Output.Label(Item3)
  - Output.Image(Width Background) # Horizontal Slider with Vertical List    
    - Output.Image(TextEditor)
      - Output.Button(Bold) # Horizontal ToolBar
        - Output.Button(Italics)
      - Output.Text()
    - Output.Image(Image1) # Vertical Slider with TextEditor
      - Output.Image(Image2) # Grid Layout
        - Output.Image(Image3)

Horizontal Vertical Switching, because of tree definition.

glPushMatrix() on indent;

glPopMatrix() on dedent;
