extends ARVRController

var pressed_text
var released_text
var buttonP
var buttonR

# Called when the node enters the scene tree for the first time.
func _ready():
    pressed_text = get_node("Viewport/Control/VBoxContainer/buttonPressed")
    released_text = get_node("Viewport/Control/VBoxContainer/buttonReleased")
    


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass


func _on_LeftController_button_pressed(button_pressed):
    pressed_text.text = "Button pressed: " + str(button_pressed)



func _on_Hand_L_button_release(button_released):
    released_text.text = "Button released: " + str(button_released)
    #if button_released == 10 && is_button_pressed(5) == 0:
        #

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





