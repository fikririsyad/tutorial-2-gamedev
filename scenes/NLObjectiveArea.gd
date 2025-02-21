extends Area2D

func _on_NLObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "GreenShip"):
		print("Reached objective for new level!")
		get_tree().change_scene_to_file("res://scenes/MainLevel.tscn")
