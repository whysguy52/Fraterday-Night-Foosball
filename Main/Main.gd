extends Spatial


var perform_runtime_config = false


#onready var ovr_init_config = preload("res://addons/godot_ovrmobile/OvrInitConfig.gdns").new()
#onready var ovr_performance = preload("res://addons/godot_ovrmobile/OvrPerformance.gdns").new()


func _ready():
    var interface = ARVRServer.find_interface("OVRMobile")
    if interface and interface.initialize():
       # Tell our viewport it is the arvr viewport:
        get_viewport().arvr = true

        # change our physics fps
        Engine.iterations_per_second = 72 # Quest


#func _process(_delta):
#    if not perform_runtime_config:
#        ovr_performance.set_clock_levels(1, 1)
#        ovr_performance.set_extra_latency_mode(1)
#        perform_runtime_config = true
