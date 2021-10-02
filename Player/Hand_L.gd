extends ARVRController

var pressed_text
var released_text
var grab_target_text
var global_transform_text

var handle_target
var handle_grabbed


var buttonP
var buttonR

# Called when the node enters the scene tree for the first time.
func _ready():
    pressed_text = get_node("Viewport/Control/VBoxContainer/buttonPressed")
    released_text = get_node("Viewport/Control/VBoxContainer/buttonReleased")
    grab_target_text = get_node("Viewport/Control/VBoxContainer/CurrentCollision")
    global_transform_text = get_node("Viewport/Control/VBoxContainer/CurrentTransform")

func _physics_process(delta):
    global_transform_text.text = str(translation)
    handle_grabbed.set_global_position(global_transform)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass

#when gripper is pressed, check to see if there's a handle and, if so, grab
func _on_LeftController_button_pressed(button_pressed):
    pressed_text.text = "Button pressed: " + str(button_pressed)
    #if the grip is pressed and there's a handle in the collision box
    if button_pressed == 2 && handle_target != null:
        handle_grabbed = handle_target

#when gripper is realeased, nullify everything in grips.
func _on_Hand_L_button_release(button_released):
    released_text.text = "Button released: " + str(button_released)
    if button_released == 2:
        handle_grabbed = null

#when the handle enters, set as target
func _on_Hand_L_body_entered(body):
    grab_target_text.text = "Grab Target: " + body.name
    if "handle" in body.name:
        handle_target = body

#when the handle leaves, let go = garget and grabbed set to null
func _on_Hand_L_body_exited(body):
    if "handle" in body.name:
        handle_target = null
        handle_grabbed = null


#TRIGGER
#   Trigger_unTouched = 12
#   Trigger_Touched = 11 
#   Trigger_Pressed = 15
#   Trigger_Unpressed = none

#GRIP
#   Grip_unTouched = none
#   Grip_Touched = none
#   Grip_Pressed = 2
#   Grip_unpressed = none

#THUMB
#   Thumb_unTouched = 10

#THUMB BUTTON X
#   Thumb_X_Touched = 5
#   Thumb_X_Pressed = 7
#   Thumb_X_unPressed = none

#THUMB BUTTON Y
#   Thumb_Y_Touched = 6
#   Thumb_Y_Pressed = 1
#   Thumb_Y_unPressed = none

#THUMB JOY
#   Thumb_JOY_Touched = none (that I can see)
#   Thumb_Joy_Pressed = 14
#   Thumb_Joy_unPressed = none (that I can see)











