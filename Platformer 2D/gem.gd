extends Area2D

signal gem_collected

func _on_body_entered(body):
	if body.name == "Player":
		$GemCollectedSFX.play()
		Global.gems_collected += 1
		gem_collected.emit()
		$CollisionShape2D.set_deferred("disabled", true)
		$AnimatedSprite2D.hide()
		await $GemCollectedSFX.finished
		queue_free()
