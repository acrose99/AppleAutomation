tell application "Microsoft Word"
	# Easy way to name and save your Resume automatically using POSIX
	display dialog "What would you would like to name this file?" default answer "Resume2020" buttons {"Continue"} default button 1
	set the nameEntered to the text returned of the result
	set docName to nameEntered & ".docx"
	
	# Word will sometimes glitch if it's not already opened, this opens the app but hides it on start. 
	activate
	
	# Change this variable to wherever you save your resumes (I.E /Users/Alex/Desktop/Jobs/)
	set my_path to "/Users/PUT PATH HERE" & docName
	
	# You need a template for this to be useful. See https://support.microsoft.com/en-us/office/create-a-template-86a1d089-5ae2-4d53-9042-1191bce57deb
	# Use your POSIX path of your template, you will need to save it locally first since Microsoft initally saves it into the cache. 
	set new_resume to create new document attached template "/Users/TEMPLATE PATH HERE.dotx"
	save as new_resume file name my_path
	
	#quits the app, feel free to look it over first. 
	quit
end tell
