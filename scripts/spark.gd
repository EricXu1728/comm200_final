extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("spark was made")
	$GPUParticles2D.emitting = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_gpu_particles_2d_finished():
	print("deleted")
	queue_free()
	pass # Replace with function body.
