extends Sprite2D

@export var speed = 2.0

@export var my_name = ""

@export var moving = false

# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	print("Hello World!")
	print(position.x)
	

#func _input(event: InputEvent) -> void:
	#print(event)
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(Input.is_action_just_pressed("ui_accept"))
	position.x += speed
	position.y += speed
	
	# player press space
	if Input.is_action_pressed("ui_accept"):
		
		moving = true
		position.x += speed * delta
		
		print("Moving")

	else:
		
		moving = false
		print("Not moving")

	pass
