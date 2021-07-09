extends Spatial


func _ready():
  var vr = ARVRServer.find_interface("OpenVR")

  if vr and vr.initialize():
    get_viewport().arvr = true

    OS.vsync_enabled = true

    # NOTE: the physics FPS in the project settings is also 90 FPS
    #       Project Settings -> General -> Physics -> Common -> Physics FPS
    #       this makes the physics run at the same frame rate as the display
    #       which makes things look smoother in VR
    Engine.target_fps = 90
