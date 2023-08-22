local png = require("include/png")
local json = require("include/json")

local Palette = {
	[1] = {
		["r"] = 255,
		["b"] = 255,
		["a"] = 255,
		["g"] = 255,
	},
	[2] = {
		["r"] = 191,
		["b"] = 213,
		["a"] = 255,
		["g"] = 213,
	},
	[3] = {
		["r"] = 136,
		["b"] = 163,
		["a"] = 255,
		["g"] = 153,
	},
	[4] = {
		["r"] = 101,
		["b"] = 126,
		["a"] = 255,
		["g"] = 108,
	},
	[5] = {
		["r"] = 65,
		["b"] = 84,
		["a"] = 255,
		["g"] = 64,
	},
	[6] = {
		["r"] = 47,
		["b"] = 56,
		["a"] = 255,
		["g"] = 44,
	},
	[7] = {
		["r"] = 0,
		["b"] = 0,
		["a"] = 255,
		["g"] = 0,
	},
	[8] = {
		["r"] = 44,
		["b"] = 62,
		["a"] = 255,
		["g"] = 6,
	},
	[9] = {
		["r"] = 104,
		["b"] = 102,
		["a"] = 255,
		["g"] = 13,
	},
	[10] = {
		["r"] = 157,
		["b"] = 111,
		["a"] = 255,
		["g"] = 23,
	},
	[11] = {
		["r"] = 205,
		["b"] = 94,
		["a"] = 255,
		["g"] = 41,
	},
	[12] = {
		["r"] = 241,
		["b"] = 70,
		["a"] = 255,
		["g"] = 70,
	},
	[13] = {
		["r"] = 255,
		["b"] = 111,
		["a"] = 255,
		["g"] = 143,
	},
	[14] = {
		["r"] = 255,
		["b"] = 195,
		["a"] = 255,
		["g"] = 241,
	},
	[15] = {
		["r"] = 255,
		["b"] = 153,
		["a"] = 255,
		["g"] = 198,
	},
	[16] = {
		["r"] = 210,
		["b"] = 103,
		["a"] = 255,
		["g"] = 127,
	},
	[17] = {
		["r"] = 157,
		["b"] = 66,
		["a"] = 255,
		["g"] = 76,
	},
	[18] = {
		["r"] = 129,
		["b"] = 56,
		["a"] = 255,
		["g"] = 47,
	},
	[19] = {
		["r"] = 81,
		["b"] = 45,
		["a"] = 255,
		["g"] = 28,
	},
	[20] = {
		["r"] = 48,
		["b"] = 37,
		["a"] = 255,
		["g"] = 14,
	},
	[21] = {
		["r"] = 31,
		["b"] = 62,
		["a"] = 255,
		["g"] = 4,
	},
	[22] = {
		["r"] = 49,
		["b"] = 95,
		["a"] = 255,
		["g"] = 7,
	},
	[23] = {
		["r"] = 94,
		["b"] = 149,
		["a"] = 255,
		["g"] = 19,
	},
	[24] = {
		["r"] = 153,
		["b"] = 182,
		["a"] = 255,
		["g"] = 36,
	},
	[25] = {
		["r"] = 213,
		["b"] = 210,
		["a"] = 255,
		["g"] = 54,
	},
	[26] = {
		["r"] = 249,
		["b"] = 196,
		["a"] = 255,
		["g"] = 95,
	},
	[27] = {
		["r"] = 255,
		["b"] = 177,
		["a"] = 255,
		["g"] = 139,
	},
	[28] = {
		["r"] = 255,
		["b"] = 195,
		["a"] = 255,
		["g"] = 201,
	},
	[29] = {
		["r"] = 42,
		["b"] = 5,
		["a"] = 255,
		["g"] = 1,
	},
	[30] = {
		["r"] = 84,
		["b"] = 3,
		["a"] = 255,
		["g"] = 3,
	},
	[31] = {
		["r"] = 112,
		["b"] = 8,
		["a"] = 255,
		["g"] = 31,
	},
	[32] = {
		["r"] = 163,
		["b"] = 18,
		["a"] = 255,
		["g"] = 81,
	},
	[33] = {
		["r"] = 196,
		["b"] = 29,
		["a"] = 255,
		["g"] = 120,
	},
	[34] = {
		["r"] = 221,
		["b"] = 40,
		["a"] = 255,
		["g"] = 179,
	},
	[35] = {
		["r"] = 255,
		["b"] = 56,
		["a"] = 255,
		["g"] = 251,
	},
	[36] = {
		["r"] = 255,
		["b"] = 162,
		["a"] = 255,
		["g"] = 253,
	},
	[37] = {
		["r"] = 226,
		["b"] = 111,
		["a"] = 255,
		["g"] = 255,
	},
	[38] = {
		["r"] = 172,
		["b"] = 56,
		["a"] = 255,
		["g"] = 255,
	},
	[39] = {
		["r"] = 84,
		["b"] = 37,
		["a"] = 255,
		["g"] = 224,
	},
	[40] = {
		["r"] = 17,
		["b"] = 49,
		["a"] = 255,
		["g"] = 191,
	},
	[41] = {
		["r"] = 6,
		["b"] = 84,
		["a"] = 255,
		["g"] = 160,
	},
	[42] = {
		["r"] = 0,
		["b"] = 94,
		["a"] = 255,
		["g"] = 129,
	},
	[43] = {
		["r"] = 0,
		["b"] = 81,
		["a"] = 255,
		["g"] = 77,
	},
	[44] = {
		["r"] = 0,
		["b"] = 48,
		["a"] = 255,
		["g"] = 29,
	},
	[45] = {
		["r"] = 185,
		["b"] = 214,
		["a"] = 255,
		["g"] = 255,
	},
	[46] = {
		["r"] = 125,
		["b"] = 220,
		["a"] = 255,
		["g"] = 255,
	},
	[47] = {
		["r"] = 71,
		["b"] = 244,
		["a"] = 255,
		["g"] = 234,
	},
	[48] = {
		["r"] = 63,
		["b"] = 230,
		["a"] = 255,
		["g"] = 202,
	},
	[49] = {
		["r"] = 50,
		["b"] = 210,
		["a"] = 255,
		["g"] = 149,
	},
	[50] = {
		["r"] = 43,
		["b"] = 196,
		["a"] = 255,
		["g"] = 121,
	},
	[51] = {
		["r"] = 32,
		["b"] = 177,
		["a"] = 255,
		["g"] = 74,
	},
	[52] = {
		["r"] = 22,
		["b"] = 151,
		["a"] = 255,
		["g"] = 34,
	},
	[53] = {
		["r"] = 37,
		["b"] = 115,
		["a"] = 255,
		["g"] = 10,
	},
}
function table.count(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end
local function _PrintTable( tbl, cb, add )
	local _print = cb or print
	for k,v in pairs(tbl) do
		if type(v) == "table" then
			print((add or "").."[\""..tostring(k).."\"]={")
			_PrintTable( v, cb, (add or "") .. "\t" )
			print((add or "").."},")
		else
			_print((add or "").."[\""..k.."\"] =\t"..tostring(v)..",")
		end
	end
end

local function PrintTable( tbl, tbl_name, cb )
	local _print = cb or print
	
	print("---------Printing Table---------")
	
	if type(tbl) ~= "userdata" then
		_print("table: size("..table.count(tbl)..") "..(tbl_name or ""))
	else
		_print("userdata: "..tbl_name or "")
	end

	local meta = getmetatable( tbl )
	if meta ~= nil then 
		print("---------Printing Meta---------")
		_PrintTable( meta, cb ) 
		print("----------End of Meta----------")
	end
	if type(tbl) ~= "userdata" then
		_PrintTable( tbl, cb )
	end
	print("----------End of Print----------")
end

local BaseOffset = {}; BaseOffset.x=0; BaseOffset.y=0
local ArtboardImageWidth = 1024

local function l_pxPos(x, y)
	return (BaseOffset.x+x-1) + (BaseOffset.y+y-1) * ArtboardImageWidth
end

function printProg(line, totalLine)
	print(line .. " of " .. totalLine)
end

print("Loading Image From File.")
local img = png.load_from_file([[.\map.png]])

local pixels = {}

local p, x, y
print("Getting Image Pixels.")
local get_pixel = png.pixels(img)
while true do
	p, x, y = get_pixel()
	
	if not p or not x or not y then break end

	if not pixels[y+1] then pixels[y+1] = {} end
	local row = pixels[y+1]
	row[x+1] = {
		R=math.floor(p.r*256),
		G=math.floor(p.g*256),
		B=math.floor(p.b*256),
		A=math.floor(p.a*256),
	}
end

--local pixel = img.pixels[testVal.pixelCoords.x][testVal.pixelCoords.y]

--PrintTable(pixels)

--for i=1, string.len(img.data) do
--	print(string.format("%X", img.data))
--end

print("Converting Pixels To ArtboardTable.")
local ret_tbl = {}
local it = 1
for y,row in pairs(pixels) do
	for x,col in pairs(row) do
		local R = col.R
		local G = col.G
		local B = col.B
		local A = col.A
		
		if A == 255 then
			local simtbl = {}
			local i = 1
			for id,palet in pairs(Palette) do
				local dR = math.abs(R-palet.r)
				local dG = math.abs(G-palet.g)
				local dB = math.abs(B-palet.b)
				simtbl[i] = {
					["id"] = id,
					["dc"] = (dR + dG + dB)
				}
				i=i+1
			end
			table.sort(simtbl,function(dc1,dc2)
				return dc1.dc<dc2.dc
			end)
			--if simtbl[1].id ~= 16 then
			--PrintTable(simtbl)
			--end
			
			--ret_tbl[math.floor(it / 15000)] = {
			--	[it] = {
			--		["xy"] = l_pxPos(x, y),
			--		["id"] = simtbl[1].id
			--	}
			--}
			local part = math.floor(it / 15000)+ 1

			if not ret_tbl[part] then ret_tbl[part] = {} end
			table.insert(ret_tbl[part], {
					["xy"] = l_pxPos(x, y),
					["id"] = simtbl[1].id
				})
			
			it=it+1
		elseif A ~= 0 then
			local part = math.floor(it / 15000)
			if not ret_tbl[part] then ret_tbl[part] = {} end
			table.insert(ret_tbl[part], {
					["xy"] = l_pxPos(x, y),
					["id"] = 0
				})
			
			it=it+1
		end
	end
end

local output = io.open(
	[[D:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\data\artboard_files\image.json]],"w")

print("Writing ArtboardTable As Json.")
output:write(tostring(json.encode(--[[(#ret_tbl == 1) and ret_tbl[1] or ]]ret_tbl)))
io.close(output)
print("Done!!!")