extends Node2D


var c = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Tween.interpolate_property(self, "scale", Vector2(0,0), Vector2(1,1), 0.25, Tween.TRANS_EXPO, Tween.EASE_IN)
	$Tween.start()
	$Tween.interpolate_property(self, "global_position", global_position, Vector2(20,15), 0.75, Tween.TRANS_EXPO, Tween.EASE_IN, 0.25)
	$Tween.start()
	$Tween.interpolate_property(self, "scale", Vector2(1,1), Vector2(0.2,0.2), 0.5, Tween.TRANS_EXPO, Tween.EASE_IN, 0.25)
	$Tween.start()
	$Tween.interpolate_property(self, "modulate:a", 1, 0, 2, Tween.TRANS_EXPO, Tween.EASE_IN, 0.25)
	$Tween.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	$Highlight.modulate.a = (sin(c)/2)+0.5
	c += 0.5


func _on_Timer_timeout():
	queue_free()
