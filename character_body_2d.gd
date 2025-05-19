extends CharacterBody2D

@onready var _char_sprite = $CharacterSprite
#@onready var _shadow_sprite = $ShadowSprite

func _process(_delta):
	var up = Input.is_action_pressed("ui_up")
	var right = Input.is_action_pressed("ui_right")
	var down = Input.is_action_pressed("ui_down")
	var left = Input.is_action_pressed("ui_left")
	var v = 75

	
	if (up and right) :
		_char_sprite.play("up_right_run")
		#_shadow_sprite.play("up_right_run")
		velocity = Vector2(v, -v)
	elif (down and right) :
		_char_sprite.play("down_right_run")
		#_shadow_sprite.play("down_right_run")
		velocity = Vector2(v, v)
	elif (down and left) :
		_char_sprite.play("down_left_run")
		#_shadow_sprite.play("down_left_run")
		velocity = Vector2(-v, v)
	elif (up and left) :
		_char_sprite.play("up_left_run")
		#_shadow_sprite.play("up_left_run")
		velocity = Vector2(-v, -v)
	elif (up) : 
		_char_sprite.play("up_run")
		#_shadow_sprite.play("up_run")
		velocity = Vector2(0, -v)
	elif (right): 
		_char_sprite.play("right_run")
		#_shadow_sprite.play("right_run")
		velocity = Vector2(v, 0)
	elif (down):
		_char_sprite.play("down_run")
		#_shadow_sprite.play("down_run")
		velocity = Vector2(0, v)
	elif (left) : 
		_char_sprite.play("left_run")
		#_shadow_sprite.play("left_run")
		velocity = Vector2(-v, 0)
	else:
		_char_sprite.stop()
		#_shadow_sprite.stop()
		velocity = Vector2(0,0)
		
	move_and_slide()
