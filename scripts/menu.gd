extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_orientations_pressed():
	get_tree().change_scene_to_file("res://tscns/Orientation.tscn")
	pass # Replace with function body.


func _on_unit_concepts_pressed():
	get_tree().change_scene_to_file("res://tscns/UnitConcepts.tscn")
	pass # Replace with function body.


func _on_transferable_skills_pressed():
	get_tree().change_scene_to_file("res://tscns/TransferableSkills.tscn")
	pass # Replace with function body.




func _on_sources_pressed():
	get_tree().change_scene_to_file("res://tscns/Sources.tscn")
	pass # Replace with function body.
