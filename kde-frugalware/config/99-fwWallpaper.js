// Set Frugalware wallpaper for a fresh user

var activity = activities()[0]
activity.currentConfigGroup = new Array("Wallpaper", "image");
activity.writeConfig("wallpaper", "/usr/share/wallpapers/Frugalware/");
activity.writeConfig("userswallpaper", "/usr/share/wallpapers/Frugalware");
