on alfred_script(q)
	tell application "Google Chrome"
		set found to false
		set i to -1
		repeat with theWindow in every window
			set i to 0
			repeat with theTab in every tab of theWindow
				set i to i + 1
				if theTab's title contains "Beatstream" then
					set found to true
					exit repeat
					exit repeat
				end if
			end repeat
		end repeat

		if found then
			tell theTab
				if q contains "next" then
					execute javascript "document.getElementById('next').click()"
				end if
				if q contains "pause" then
					execute javascript "document.getElementById('play-pause').click()"
				end if
				if q contains "prev" then
					execute javascript "document.getElementById('prev').click()"
				end if
			end tell
		end if
	end tell
end alfred_script	