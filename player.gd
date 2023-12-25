extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var dir = ""

func _physics_process(_delta):
	velocity.y = 0
	velocity.x = 0
	
	if Input.is_anything_pressed() == false:
		if dir == "up":
			$PlayerAnimator.play("idleup")
		if dir == "down":
			$PlayerAnimator.play("idledown")
		if dir == "left":
			$PlayerAnimator.play("idleleft")
		if dir == "right":
			$PlayerAnimator.play("idleright")
	if Input.is_action_pressed("up"):
		$PlayerAnimator.play("walkup")
		dir = "up"
		velocity.y = -50
	if Input.is_action_pressed("down"):
		$PlayerAnimator.play("walkdown")
		dir = "down"
		velocity.y = 50
	if Input.is_action_pressed("left"):
		$PlayerAnimator.play("walkleft")
		dir = "left"
		velocity.x = -50
	if Input.is_action_pressed("right"):
		$PlayerAnimator.play("walkright")
		dir = "right"
		velocity.x = 50
		
	move_and_slide()
