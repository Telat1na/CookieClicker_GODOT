extends Node2D

var cookies = Save.loadValue("Main", "Cookie", 0)
var cookieOneClick = Save.loadValue("Main", "CookieOneClick", 0)
var cookiesSecond = 1
var prise = Save.loadValue("Main", "Prise", 0)

func _ready():
	if cookieOneClick == 0:
		cookieOneClick = 1
	$Cookies.text = str(cookies)
	$CookiesSecond.text = str(cookiesSecond)
	$cookieOneClick.text = str(cookieOneClick)
	$CanvasLayer2.hide()
	$CanvasLayer2/Label.text = str(prise)


func _on_TextureButton_pressed():
	cookies += cookieOneClick
	$Cookies.text = str(cookies)


func _on_Timer_timeout():
	cookies += cookiesSecond
	$Cookies.text = str(cookies)
	$CookiesSecond.text = str(cookiesSecond)
	Save.saveValue("Main", "Cookie", cookies)
	Save.saveValue("Main", "CookieOneClick", cookieOneClick)
	Save.saveValue("Main", "Prise", prise)
	Save.saveToDisk()

func _on_TextureButton2_pressed():
	$CanvasLayer2.show()


func _on_exit_pressed():
	$CanvasLayer2.hide()


func _on_buy_pressed():
	prise = 20 * cookieOneClick
	if cookieOneClick == null:
		cookieOneClick = 0
	elif cookies >= prise:
		cookieOneClick += 1
		cookies -= prise
	$CanvasLayer2/Label.text = str(prise)
	$cookieOneClick.text = str(cookieOneClick)

