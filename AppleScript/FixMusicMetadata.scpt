# This fixes the shitty genre listings in Apple Music. 
# I recommend running one genre fix at a time, othewise it might time out depending on your library size.

# This is what I found useful, but syntax is extremely easy to use for yourself. 
# First go through these genres and make sure none of the songs are bugged out, otherwise you will get a file permisson error 

#"Music got an error: Unknown object type" means you have already run this script

# Uncomment the "#" before "set genre" to run stuff. 
tell application "Music"
	tell source 1 # Source 1 is the Library!"
		# Check your albums first by running this syntax 
		# get every track whose genre is "Rap & Hip-Hop"
		
		# Fixes metadata for Hip Hop songs 
		
		# set genre of every track whose genre is "Rap & Hip Hop" to "Hip-Hop/Rap"
		# set genre of every track whose genre is "Hip-Hop" to "Hip-Hop/Rap"
		# set genre of every track whose genre is "Hip Hop/Rap" to "Hip-Hop/Rap"
		# set genre of every track whose genre is "Dirty South" to "Hip-Hop/Rap"
		# set genre of every track whose genre is "Alternative Rap" to "Hip-Hop/Rap"
		# set genre of every track whose genre is "East Coast Rap" to "Hip-Hop/Rap"
		# set genre of every track whose genre is "West Coast Rap" to "Hip-Hop/Rap"
		# set genre of every track whose genre is "Underground Rap" to "Hip-Hop/Rap"
		
		# Fixes metadata for Soul/R&B songs 
		
		# set genre of every track whose genre is "R&B" to "R&B/Soul"
		# set genre of every track whose genre is "Soul" to "R&B/Soul"
		# set genre of every track whose genre is "Neo-Soul" to "R&B/Soul"
		
		
		# Fixes metadata for African/Afrobeat songs 
		
		# set genre of every track whose genre is "African" to "Afro-Beat"
		# set genre of every track whose genre is "Afro-Pop" to "Afro-Beat"
		
		# Fixes metadata for Latin Pop and Mambo/Samba songs (shoutout to my guy Lou Bega)
		
		# set genre of every track whose genre is "Pop;Dance;Latin" to "Pop Latino"
		# set genre of every track whose genre is "Urbano latino" to "Pop Latino"
		# set genre of every track whose genre is "Mœsica tropical" to "Latino"
		# set genre of every track whose genre is "Cuban" to "Latino"
		
		# Fixes metadata for Reggae/Dub/Dancehall songs
		
		# set genre of every track whose genre is "Ska" to "Reggae"
		# set genre of every track whose genre is "Modern Dancehall" to "Reggae"
		
		
		
	end tell
end tell