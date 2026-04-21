class_name StateMachine extends Node


var current_state: State
var states: Dictionary = {}

func start_machine(init_states: Array[State]):
	for state in init_states:
		states[state.get_state_name()] = state
		
		current_state = init_states[0]
		current_state.enter()
		
func _process(delta):
	current_state.process(delta)

func _physics_process(delta):
	current_state.physics_process(delta)
	
func transition(new_state_name: String):
	var new_state: State = states.get(new_state_name)
	var current_state_name = current_state.get_state_name()
	
	if new_state == null:
		push_error("new state doesn't exist: (%s)" % new_state_name)
	elif new_state != current_state:
		current_state.exit()
		current_state = states[new_state.get_state_name()]
		current_state.enter
