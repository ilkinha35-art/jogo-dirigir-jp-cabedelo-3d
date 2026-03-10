extends CharacterBody3D

var speed = 10.0
var turn_speed = 3.0

func _physics_process(delta):
    var input_dir = Vector3.ZERO

    if Input.is_action_pressed("ui_up"):
        input_dir.z -= 1
    if Input.is_action_pressed("ui_down"):
        input_dir.z += 1
    if Input.is_action_pressed("ui_left"):
        rotation.y += turn_speed * delta
    if Input.is_action_pressed("ui_right"):
        rotation.y -= turn_speed * delta

    velocity = transform.basis * input_dir * speed
    move_and_slide()
