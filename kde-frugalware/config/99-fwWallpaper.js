/* Copyright 2013 Frugalware Developer Team */

// Set Frugalware wallpaper for a fresh user
for (var i = 0; i < activities().length; i++) {
    var activity = activities()[i]
    activity.currentConfigGroup = new Array("Wallpaper", "image")
    activity.writeConfig("wallpaper", "/usr/share/wallpapers/Frugalware/")
    activity.writeConfig("userswallpaper", "/usr/share/wallpapers/Frugalware")
}
