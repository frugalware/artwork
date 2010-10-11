;; A theme

(let*
	(
		;; close button images
		(close-images (list
			(make-image "button-unfocused.png")
			(make-image "close-focused.png")
			nil
			(make-image "close-pressed.png")
		))
		;; iconify button images
		(iconify-images (list
			(make-image "button-unfocused.png")
			(make-image "iconify-focused.png")
			nil
			(make-image "iconify-pressed.png")
		))
		;; maximize button images
		(maximize-images (list
			(make-image "button-unfocused.png")
			(make-image "maximize-focused.png")
			nil
			(make-image "maximize-pressed.png")
		))
		;; menu button images
		(menu-images (list
			(make-image "button-unfocused.png")
			(make-image "menu-focused.png")
			nil
			(make-image "menu-pressed.png")
		))
		;; titleleftend image
		(title-leftend-image (make-image "title-leftend.png"))
		;; titlerightend image
		(title-rightend-image (make-image "title-rightend.png"))
		;; titlemiddle image
		(title-middle-image (make-image "title-middle.png"))
		;; topleft image
		(topleft-image (make-image "topleft.png"))
		;; topright image
		(topright-image (make-image "topright.png"))
		;; bottomleft image
		(bottomleft-image (make-image "bottomleft.png"))
		;; bottomright image
		(bottomright-image (make-image "bottomright.png"))
		;; left image
		(left-image (make-image "left.png"))
		;; right image
		(right-image (make-image "right.png"))
		;; bottom image
		(bottom-image (make-image "bottom.png"))
		;; text colors
		(text-colors '("grey60" "black"))
		(frame `(
			;; title left padding
			(
				(class . title)
				(background . ,title-middle-image)
				(top-edge . -21)
				(left-edge . 0)
			)
			;; title right padding
			(
				(class . title)
				(background . ,title-middle-image)
				(top-edge . -21)
				(right-edge . 0)
			)
			;; close button
			(
				(class . close-button)
				(background . ,close-images)
				(top-edge . -21)
				(right-edge . 1)
			)
			;; iconify button
			(
				(class .  iconify-button)
				(background . ,iconify-images)
				(top-edge . -21)
				(right-edge . 39)
			)
			;; maximize button
			(
				(class . maximize-button)
				(background . ,maximize-images)
				(top-edge . -21)
				(right-edge . 20)
			)
			;; menu button
			(
				(class . menu-button)
				(background . ,menu-images)
				(top-edge . -21)
				(left-edge . 1)
			)
			;; title leftend
			(
				(class . title)
				(background . ,title-leftend-image)
				(top-edge . -21)
				(left-edge . 20)
			)
			;; title rightend
			(
				(class . title)
				(background . ,title-rightend-image)
				(top-edge . -21)
				(right-edge . 58)
			)
			;; title middle
			(
				(class . title)
				(background . ,title-middle-image)
				(top-edge . -21)
				(left-edge . 28)
				(right-edge . 66)
				(text . ,window-name)
				(foreground . ,text-colors)
				(x-justify . center)
				(y-justify . center)
			)
			;; topleft
			(
				(class . top-left-corner)
				(background . ,topleft-image)
				(left-edge . -2)
				(top-edge . -21)
			)
			;; topright
			(
				(class . top-right-corner)
				(background . ,topright-image)
				(right-edge . -2)
				(top-edge . -21)
			)
			;; bottomleft
			(
				(class . bottom-left-corner)
				(background . ,bottomleft-image)
				(left-edge . -2)
				(bottom-edge . -2)
			)
			;; bottomright
			(
				(class . bottom-right-corner)
				(background . ,bottomright-image)
				(right-edge . -2)
				(bottom-edge . -2)
			)
			;; left
			(
				(class . left-border)
				(background . ,left-image)
				(bottom-edge . 0)
				(left-edge . -2)
				(top-edge . 0)
			)
			;; right
			(
				(class . right-border)
				(background . ,right-image)
				(top-edge . 0)
				(right-edge . -2)
				(bottom-edge . 0)
			)
			;; bottom
			(
				(class . bottom-border)
				(background . ,bottom-image)
				(bottom-edge . -2)
				(left-edge . 0)
				(right-edge . 0)
			)
		))
		(shaded-frame `(
			;; title left padding
			(
				(class . title)
				(background . ,title-middle-image)
				(top-edge . -21)
				(left-edge . 0)
			)
			;; title right padding
			(
				(class . title)
				(background . ,title-middle-image)
				(top-edge . -21)
				(right-edge . 0)
			)
			;; close button
			(
				(class . close-button)
				(background . ,close-images)
				(top-edge . -21)
				(right-edge . 1)
			)
			;; iconify button
			(
				(class .  iconify-button)
				(background . ,iconify-images)
				(top-edge . -21)
				(right-edge . 39)
			)
			;; maximize button
			(
				(class . maximize-button)
				(background . ,maximize-images)
				(top-edge . -21)
				(right-edge . 20)
			)
			;; menu button
			(
				(class . menu-button)
				(background . ,menu-images)
				(top-edge . -21)
				(left-edge . 1)
			)
			;; title leftend
			(
				(class . title)
				(background . ,title-leftend-image)
				(top-edge . -21)
				(left-edge . 20)
			)
			;; title rightend
			(
				(class . title)
				(background . ,title-rightend-image)
				(top-edge . -21)
				(right-edge . 58)
			)
			;; title middle
			(
				(class . title)
				(background . ,title-middle-image)
				(top-edge . -21)
				(left-edge . 28)
				(right-edge . 66)
				(text . ,window-name)
				(foreground . ,text-colors)
				(x-justify . center)
				(y-justify . center)
			)
		))
	)
	;; finally add the style
	(add-frame-style 'CrystalSaw
		(lambda (w type)
			(case type
				((default) frame)
				((transient) frame)
				((shaped) frame)
				((shaped-transient) frame)
				((shaded) shaded-frame)
				((shaded-transient) shaded-frame)
	)))
)
