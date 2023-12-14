extends CanvasLayer
var shaking := false;
@onready var viewport = get_viewport()
@onready var game_size = Vector2(
	ProjectSettings.get_setting('display/window/size/viewport_width'),
	ProjectSettings.get_setting('display/window/size/viewport_height')
)

func _ready():
	viewport.connect('size_changed', center_game)
	
	center_game()

func center_game():
	var rescale = viewport.get_visible_rect().size/game_size
	self.scale = rescale
	
var rng = RandomNumberGenerator.new()
func shake():
	offset.x = rng.randf_range(-10.0, 10.0)
	offset.y = rng.randf_range(-10.0, 10.0)
	
func _process(delta):
	if(shaking):
		shake()
		
	pass
	
func stop_shaking():
	shaking = false
	offset.x = 0
	offset.y = 0
