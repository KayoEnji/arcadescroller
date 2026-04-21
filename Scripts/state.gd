class_name State

func enter():
	pass

func exit():
	pass
	
func process(_delta):
	pass

func physics_process(_delta):
	pass

func get_state_name():
	push_error("Method get_state_name() must be defined")
	return ""
