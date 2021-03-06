# Windows curl seems to have issues with https. This was run on a Linux box.

# Pure data message (look at the console)
curl -i -X POST "https://fcm.googleapis.com/fcm/send" -d '{ "data": { "score": "5x1", "time": "15:10" }, "to" : "dXcAwbTVRpU:APA91bF5W7hI6tZy1zJnN28nL6REod24agaEh-ZW6k8zSaGg14x7t7k7Dkg4uVLeRYg9mVm0c40xvDoYr-8D6hR1KeYhHPnoFp9Jg3JTBjyU31BRYbaljj1xxQ7U9fwGEYV3pTOWFaZW" }' -H "Content-Type: application/json" -H "Authorization:key=AIzaSyAgTtqbZ-Pnh-jp_B-YTIbBE0cZUVYX3uA"

# Notification, is shown in the browser
curl -i -X POST "https://fcm.googleapis.com/fcm/send" -d '{
 "notification": {
     "title": "somethis is happening",
         "body": "and here is the info <b>from US</b>!!",
	     "click_action" : "https://dummypage.com"
	  },
	  "to" : "dXcAwbTVRpU:APA91bF5W7hI6tZy1zJnN28nL6REod24agaEh-ZW6k8zSaGg14x7t7k7Dkg4uVLeRYg9mVm0c40xvDoYr-8D6hR1KeYhHPnoFp9Jg3JTBjyU31BRYbaljj1xxQ7U9fwGEYV3pTOWFaZW"
      }' -H "Content-Type: application/json" -H "Authorization:key=AIzaSyAgTtqbZ-Pnh-jp_B-YTIbBE0cZUVYX3uA"