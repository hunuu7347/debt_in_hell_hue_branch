extends Node

@onready var http_request = $HTTPRequest

const MUSIC_URL = "https://example.com/music.mp3"

func _ready():
	http_request.request_completed.connect(_on_request_completed)

	var error = http_request.request(MUSIC_URL)

	if error != OK:
		print("Request failed to start: ", error)

func _on_request_completed(result, response_code, headers, body):
	if result == HTTPRequest.RESULT_SUCCESS and response_code == 200:
		var file = FileAccess.open("user://music.mp3", FileAccess.WRITE)

		if file:
			file.store_buffer(body)
			file.close()
			print("Music downloaded successfully!")
		else:
			print("Could not save music file.")
	else:
		print("Download failed. HTTP code: ", response_code)
