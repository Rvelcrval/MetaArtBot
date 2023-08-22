g_Artboard = LuaScreen.GetScreenEntities("artboard")[1]

print("Starting artboard fun")

//print(CurTime() - g_Artboard.TimeoutWhen < g_Artboard.TimeoutTime)

local BaseOffset = {}; BaseOffset.x=0; BaseOffset.y=0

local function l_pxPos(x, y)
	return (BaseOffset.x+x-1) + (BaseOffset.y+y-1) * g_Artboard.ImageWidth
end

local pix_data = {}

local pix_data_full = util.JSONToTable(file.Read("artboard_files/image.json"))
for k, v in pairs(pix_data_full) do
	table.Add(pix_data, v)
	//PrintTable(v[#v])
	//print(#v)
end
//print(#pix_data)
--PrintTable(LuaScreen.GetScreenEntities("artboard")[1].Palette)
local it = 1

//if CLIENT then return end

local AntiFun = 0

print("Loaded:[".. tostring(pix_data) .. "] " .. #pix_data_full .. ":parts " .. #pix_data .. ":pixels")

local maxSanity = 10000
local sanityIterator = 0
local AddedPixels = 0

 
hook.Add("Think","WeDoBeArtboarding",function()
	if table.count(pix_data) <= it then
		print("Done!!!", table.count(pix_data), it)
		hook.Remove("Think","WeDoBeArtboarding")
		return
	end
	if AntiFun == g_Artboard.TimeoutWhen and g_Artboard.TimeoutWhen != 0 then return end
	if CurTime() - g_Artboard.TimeoutWhen > g_Artboard.TimeoutTime then
		//print("Trying to draw")
		
		local pixels = {}
	
		sanityIterator = 0
	
		while 
			table.count(pixels) < g_Artboard.MaxPixels and 
			table.count(pix_data) > it and
			sanityIterator < maxSanity
		do
			local pix = pix_data[it]
			if pix and g_Artboard.Image[pix.xy+1] != (pix.id-1) then
				pixels[pix.xy]=pix.id
				//print(table.count(pixels), pix.xy, pix.id)
				AddedPixels = AddedPixels + 1
			end
			it=it+1
			
			sanityIterator=sanityIterator+1
		end
		
		//print("Total pixels added: ", AddedPixels)

		if it != 1 then
			AntiFun = g_Artboard.TimeoutWhen
		elseif sanityIterator then
			AntiFun = CurTime() + 0.2
		end
		
		//print(sanityIterator, AntiFun, g_Artboard.TimeoutWhen)
		if table.count(pixels)>0 then
			//PrintTable(pixels)
			g_Artboard:CallOnServer('addPixels', pixels, false, false)
			g_Artboard:RefreshRT()
			surface.PlaySound('buttons/button9.wav')
		end
	end
end)