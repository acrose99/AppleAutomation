tell application "Finder"
	set my_files to every file of desktop
	# Rename to your own User, and put it in whatever folder you want. 
	set my_folder to alias "Macintosh HD:Users:[USER]:Desktop:[Folder here]"
	repeat with my_file in my_files
		tell my_file
			if name of my_file contains "Screenshot" then
				move my_file to my_folder
			end if
		end tell
	end repeat
end tell
