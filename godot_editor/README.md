# Godot Editor tutorial

## Personal Node use cases

Node | use
--- | ---
Position2D | Origin Marking
Button | function
Checkable | boolean
Spinbox | number set
Slider | range
Line Edit | String
Tab Container | Task switch
Scroll Container ![icon](https://raw.githubusercontent.com/godotengine/godot/master/editor/icons/ScrollContainer.svg) | View
Control ![icon](https://raw.githubusercontent.com/godotengine/godot/master/editor/icons/Control.svg) | Node1D
H/vBoxConatainer | Switch
PanelContainer | Level
Panel | Background
GridContainer | HBox wrap

<https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.png>
<https://easings.net/>

```
# 128 px high jump!


#extends KinematicBody2D
#var gravity = 981
#var jump_height = -sqrt(2 * gravity * 128 px)
#var velocity = Vector2(0, 0)
#
#func _process(delta):
#    if is_on_floor() and Input.is_action_just_pressed("jump"):
#        velocity.y = -jumpheighy
#
#    move_and_slide(velocity, Vector2.UP)
#
#    velocity.y += gravity * delta
```

## Ordinal input
- Option button +

