extends Control

# Power alert
func _ready():
	if OS.get_power_state() == OS.POWERSTATE_ON_BATTERY: 
		$PowerDialog.window_title = str(OS.get_power_percent_left()) + "% charge"
		$PowerDialog.popup_centered() # Your device is not plugged into a power source. Beware that this application might be a bit consuming of your power.
		

# Container UI animation
func fade_in_alpha(node : CanvasItem, duration = 0.2):
	$Tween.interpolate_property(node, "modulate", Color.transparent, node.modulate, duration, Tween.TRANS_QUART)
	$Tween.start()

# max_spinbox
	max_value = value
	suffix = "/ " + str(max_value)

func _on_Channel_index_pressed(index):
	more.toggle_item_checked(index)
	var toggle = more.is_item_checked(index)
	
	match index:
		0: frames.modulate.r = 1 if toggle else 0
		1: frames.modulate.g = int(toggle)
		2: frames.modulate.b = 1 if toggle else 0
		
# subdivide
func _on_Frames_resized():
	var aspect = frames.rect_size.aspect()
	var count = frames.get_child_count()
#	print(aspect)
	if aspect > (1.613 + 1 /1.613) / 2: # :,) just wow
		frames.columns = ceil(sqrt(count))
	else:
		frames.columns = floor(sqrt(count))



extends PopupMenu

export(Array, String, FILE, "*.tscn") var to_scenes : = []

var popup = PopupMenu.new()
var scenes = PopupMenu.new()
var shrink = PopupMenu.new()
var tabs = PopupMenu.new()
var screen_shader = PopupMenu.new()
var time_scale = PopupMenu.new()

onready var screen_shader_panel = $ScreenSpaceShader

func _ready():
	submenu_popup_delay = 0.18
	hide_on_checkable_item_selection = false
	
	add_separator("Get")
	
	# Popup submenu
	# scenes submenu
	# tabs check submenu
	# screen shader submenu
	screen_shader.name ="ScreenShader"
	screen_shader.hide_on_checkable_item_selection = false
	for resource in $ScreenSpaceShader/ResourcePreloader.get_resource_list():
		screen_shader.add_radio_check_item(resource)
	screen_shader.connect("index_pressed", self, "_on_ScreenShader_index_pressed")
	
	add_child(screen_shader)
	add_submenu_item("Screen Shader", "ScreenShader")
	
	add_separator("Set")
	
	# shrink submenu
	shrink.add_item("1x")
	shrink.add_item("2x")
	shrink.add_item("3x")
	shrink.add_item("4x")
	
	# time_scale submenu
	time_scale.add_item("0.5x")
	time_scale.add_item("1x")
	time_scale.add_item("1.5x")
	time_scale.add_item("2x")
	
	add_separator("Commands")
	


func _on_StretchShrink_index_pressed(index):
	get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_DISABLED, SceneTree.STRETCH_ASPECT_IGNORE, Vector2.ZERO, index + 1)


func _on_TimeScale_index_pressed(index):
	Engine.time_scale = 0.5 + index * 0.5

var previos_checked = false
var previos_index = -1
func _on_ScreenShader_index_pressed(index):
	screen_shader.toggle_item_checked(index)
	var checked = screen_shader.is_item_checked(index)
	
	if checked != previos_checked:
		$ScreenSpaceShader.visible = checked
		previos_checked = checked
		previos_index = index
	else:
		screen_shader.toggle_item_checked(previos_index)
		previos_index = index
	
	if checked:
		var resource = $ScreenSpaceShader/ResourcePreloader.get_resource(screen_shader.get_item_text(index))
		if resource is Shader:
			screen_shader_panel.material = ShaderMaterial.new()
			screen_shader_panel.material.shader = resource
		elif resource is ShaderMaterial:
			screen_shader_panel.material = resource


# image grid

# Select Gridcontainer as parent
# Shift/Ctrl select all images you want to use and frag them in the viewport while holding Alt,
# Select TextureRect.
# Optionally enable expand and set a minimum_size to make an even grid

func _ready():
	for child in get_children():
		child.hint_tooltip = child.texture.resource_path.get_file()



