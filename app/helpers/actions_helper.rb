module ActionsHelper
	def getUserImage(name)
		case name
		when 'Adam'
			'adam.jpg'
		when 'Ballmer'
			'ballmer.jpg'
		when 'R2D2'
			'r2d2.png'
		else
			'profile.png'
		end
	end

	def getAppIcon(appName) 
		case appName
		when 'chrome'
			'chrome.jpg'
		when 'calendar'
			'calendar.png'
		when 'maps'
			'googlemaps.png'
		when 'youtube'
			'youtube.png'
		when 'twitter'
			'twitter.png'
		when 'launcher'
			'ic_launcher.png'
		else
			'nonefound.png'
		end
	end

end
