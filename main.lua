local wallpaper = require "plugin.wallpaper"
local json = require("json")
local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
local logo = display.newText( "Wallpaper Plugin", 0, 0, native.systemFontBold, 20 )
logo.x, logo.y = display.contentCenterX, 50
bg:setFillColor( 0,.4,0 )
local widget = require("widget")
local setWallpaperButton
local boostSwitch = 0
setWallpaperButton = widget.newButton( {
	label = "Set Wallpaper",
	id = "setWallpaper",
	onEvent = function ( e )
		if (e.phase == "began") then
			wallpaper.set(system.pathForFile( "wallpaper.jpeg" ))
		end
	end
} )
setWallpaperButton.x, setWallpaperButton.y = display.contentCenterX, display.contentCenterY-100
