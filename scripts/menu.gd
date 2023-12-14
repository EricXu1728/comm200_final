extends Control

@export var unlocks : Resource
@onready var popup := $Label
@onready var layer = $"../.."
@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	print(unlocks.blue_key)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_orientations_pressed():
	
	get_tree().change_scene_to_file("res://tscns/Orientation.tscn")
	pass # Replace with function body.


var blue_ready := false
func _on_unit_concepts_pressed():
	if(unlocks.blue_key):
		if(blue_ready==true):
			get_tree().change_scene_to_file("res://tscns/UnitConcepts.tscn")
		else:
			blue_ready = true
			unlock($BlueLock)
	else:
		popup.text = "Need blue key"
	pass # Replace with function body.

var red_ready := false
func _on_transferable_skills_pressed():
	if(unlocks.red_key):
		if(red_ready):
			get_tree().change_scene_to_file("res://tscns/TransferableSkills.tscn")
		else:
			red_ready = true
			unlock($RedLock)
	else:
		popup.text = "Need red key"
	pass # Replace with function body.


func _on_sources_pressed():
	get_tree().change_scene_to_file("res://tscns/Sources.tscn")
	pass # Replace with function body.
	
var sparkleTscn :=load("res://tscns/spark.tscn")

func unlock(object : Node)->void:
	print("We unlocked ", object)
	
	var spark = sparkleTscn.instantiate()
	spark.position = object.position
	add_child(spark)
	
	layer.shaking =true
	object.queue_free()
	timer.start()
	pass


func _on_timer_timeout():
	layer.stop_shaking()
	pass # Replace with function body.
