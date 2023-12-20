extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(_delta):
	velocity.y = 0
	velocity.x = 0
	if Input.is_action_pressed("up"):
		velocity.y = -50
	if Input.is_action_pressed("down"):
		velocity.y = 50
	if Input.is_action_pressed("left"):
		velocity.x = -50
	if Input.is_action_pressed("right"):
		velocity.x = 50
	move_and_slide()
