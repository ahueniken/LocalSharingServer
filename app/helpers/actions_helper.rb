module ActionsHelper

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
