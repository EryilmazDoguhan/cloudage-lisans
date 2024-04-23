PerformHttpRequest("https://api.github.com/repos/EryilmazDoguhan/cloudage-lisans/releases/latest", function(err, text, headers)
	Citizen.Wait(1000)
	if text then
		local info = json.encode(text) info = json.decode(text)
		local currentVersion = GetResourceMetadata(GetCurrentResourceName(), "version") 
		local newestVersion = info.tag_name

		if ( newestVersion ~= nil ) then
			if newestVersion ~= currentVersion then
				print("  ^2||")
				print("  ^5||  Cloudage NEWQB PAKET")
				print("  ^5||    ^4DISCORD : discord.gg/cloudagedev")
				print("  ^5||    ^4GÜNCEL SÜRÜM: ^2" .. newestVersion .. "^0")
				print("  ^5||    ^4ŞUANKİ SÜRÜM: ^1" .. currentVersion .. "^0")
				print("  ^5||  YENI GUNCELLEME ^1TESPIT EDILDI")
				print("  ^2||")
			elseif newestVersion == currentVersion then
				print("  ^3||")
				print("  ^5||  Cloudage NEWQB PAKET")
				print("  ^5||    ^4DISCORD : discord.gg/cloudagedev")
				print("  ^5||    ^4GÜNCEL SÜRÜM: ^2" .. newestVersion .. "^0")
				print("  ^5||    ^4ŞUANKİ SÜRÜM: ^4" .. currentVersion .. "^0")
				print("  ^5||  PAKET GUNCEL SATIN ALDIGINIZ ICIN TESEKKURLER")
				print("  ^3||")
			end
		else
			print("  ||    ^1There was an error getting the latest version information.\n^0  \\\\")
		end
	end
end)