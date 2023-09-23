extends CanvasLayer

func gems():
	$GemsLabel.text = "Gems: " + str(Global.gems_collected)

func level(num):
	$CurrentLevel.text = "Level " + str(num)
