# This will delete all your downloaded music for specific conditions (Play count, Last Played Date, and if they are unplayed)
# For more functionality, just copy and paste "delete (every track whose _________", by using the dictionary.


tell application "Music"
	tell source 1 # Source 1 is the Library!"
		#I advise you to preview what might be deleted from your storage before running! Use the below syntax!
		#I.E get name of every track whose unplayed = true
		
		#You can also just hard code everything. 
		display dialog "How do you want to clean your downloaded Music?" buttons {"Delete any tracks that are Unplayed", "Delete tracks by their play count", "Delete tracks by their last played date"} default button 1
		set the button_pressed to the button returned of the result
		if the button_pressed is "Delete any tracks that are Unplayed" then
			delete (every track whose unplayed = true)
			delete (every shared track whose unplayed = true)
			
		else if the button_pressed is "Delete tracks by their play count" then
			display dialog "What should their minimum play count be" default answer "2" buttons {"Continue"} default button 1
			set the countEntered to the text returned of the result
			delete (every track whose played count is less than (countEntered))
			delete (every shared track whose played count is less than (countEntered))
			
		else if the button_pressed is "Delete tracks by their last played date" then
			display dialog "What should their minimum last Played Date be?" default answer "Tuesday, January 1, 2019 at 12:00:00 AM" buttons {"Continue"} default button 1
			set the dateEntered to the text returned of the result
			delete (every track whose played date is less than date dateEntered)
			delete (every shared track whose played date is less than date dateEntered)
			
		else
			display dialog "Error!"
		end if
		
	end tell
end tell