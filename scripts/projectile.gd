extends Area2D

const SPEED = 300.0
var velocity = Vector2()
var direction
var spawnPosition
var spawnRotation

func _ready():
	position = spawnPosition  # Use local position for Area2D
	rotation = spawnRotation
	velocity = Vector2(SPEED, 0).rotated(direction)  # Set initial velocity

func _process(delta):
	position += velocity * delta  # Move the projectile manually


func _on_body_entered(body):
	if body.has_method("shoot") == false:
		print("hit")
		queue_free()
		
