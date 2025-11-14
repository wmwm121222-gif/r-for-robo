extends CanvasLayer

var coinscollected = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$coincount.text = "coins: " + str(coinscollected)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_coin_body_entered(body: Node2D) -> void:
	coinscollected = coinscollected + 1
	$coincount.text = "coins: " + str(coinscollected)


func _on_coin_9_body_entered(body: Node2D) -> void:
	coinscollected = coinscollected + 1
	$coincount.text = "coins: " + str(coinscollected)
