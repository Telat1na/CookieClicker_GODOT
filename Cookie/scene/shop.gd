extends Node2D


func _on_TextureButton_pressed():
	var x = find_node("res://scene/game.gd")
	x.cookieOneClick += 1

func _on_TextureButton2_pressed():
	get_tree().change_scene("res://scene/game.tscn")
