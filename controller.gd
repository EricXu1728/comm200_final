extends Node2D

@export var text : Resource
@onready var label :=$Panel/Label
@onready var panel :=$Panel
var desired_text := ""
var index = 0
var finished_line :=false
var string_index :=0

var text_speed := 2
var text_progress :=0

# Called when the node enters the scene tree for the first time.
func _ready():
	next_line()
	set_dimensions(panel.size.x, panel.size.y)
	print(label.size)
	#print(text.test) 
	pass # Replace with function body.
	
func set_dimensions(x, y):
	#print(x, y)
	var labelScale = label.scale.x
	panel.size.x = x 
	label.size.x = (x -10)/labelScale
	panel.size.y = y
	label.size.y = y
	#print(label.size)
	
	#text.funny()
	pass

func next_line():
	index+=1
	print(index)
	
	label.text = "";
	
	if(index == text.textList.size()):
		print("yaya")
		get_tree().change_scene_to_file("res://tscns/Main.tscn")
		
			
	var nextLine = text.textList[index-1]
	
	if(nextLine == "*"):
		text.event(self)
		print("yya", index)
		next_line()
	else:
		finished_line = false
		text_progress = 0
		string_index = 0
		desired_text = nextLine
		#print(label.text)

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if(Input.is_action_just_pressed("ui_accept")):
		next_line()
		
		
	text_progress += text_speed
			
	while(text_progress>1 && finished_line==false):
		text_progress -= 1
		
		
		if (!finished_line):
			if(string_index>=desired_text.length()):
				finished_line = true
			else:
				
				
				label.text += desired_text[string_index]
				string_index +=1
		
		
	pass


func _on_panel_item_rect_changed():
	set_dimensions(panel.size.x, panel.size.y)
	pass # Replace with function body.
