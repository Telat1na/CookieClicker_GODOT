extends Node2D

var savePath = "user://save-file.cfg"
var config = ConfigFile.new()
var loadResponce = config.load(savePath)


func saveValue(section, key, value):
	config.set_value(section, key, value)


func saveToDisk():
	config.save(savePath)

func loadValue(section,key, default):
	return config.get_value(section,key,default)
