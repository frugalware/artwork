;; theme

(let*
	(
		;; close button images
		(close-button (list
			(make-image "button-unfocused.png")
			(make-image "close-focused.png")
			nil
			(make-image "close-pressed.png")
		))
		;; maximize button images
		(maximize-button (list
			(make-image "button-unfocused.png")
			(make-image "maximize-focused.png")
			nil
			(make-image "maximize-pressed.png")
		))
		;; iconify button images
		(iconify-button (list
			(make-image "button-unfocused.png")
			(make-image "iconify-focused.png")
			nil
			(make-image "iconify-pressed.png")
		))
		;; menu button images
		(menu-button (list
			(make-image "menu-unfocused.png")
			(make-image "menu-focused.png")
			nil
			(make-image "menu-pressed.png")
		))
		;; title images
		(title (list
			(make-image "title-unfocused.png")
			(make-image "title-focused.png")
		))
		;; topleft images
		(topleft (list
			(make-image "topleft-unfocused.png")
			(make-image "topleft-focused.png")
		))
		;; topright images
		(topright (list
			(make-image "topright-unfocused.png")
			(make-image "topright-focused.png")
		))
		;; top images
		(top (list
			(make-image "top-unfocused.png")
			(make-image "top-focused.png")
		))
		;; bottomleft image
		(bottomleft (make-image "bottomleft.png"))
		;; bottomright image
		(bottomright (make-image "bottomright.png"))
		;; bottom image
		(bottom (make-image "bottom.png"))
		;; left image
		(left (make-image "left.png"))
		;; right image
		(right (make-image "right.png"))
		;; text colors
		(text-colors '("grey65" "black"))
		(frame `(
			;; close button
			(
				(class . close-button)
				(background . ,close-button)
				(top-edge . -21)
				(right-edge . 0)
			)
			;; maximize button
			(
				(class . maximize-button)
				(background . ,maximize-button)
				(top-edge . -21)
				(right-edge . 17)
			)
			;; iconify button
			(
				(class . iconify-button)
				(background . ,iconify-button)
				(top-edge . -21)
				(right-edge . 34)
			)
			;; menu button
			(
				(class . menu-button)
				(background . ,menu-button)
				(top-edge . -21)
				(left-edge . 0)
			)
			;; title
			(
				(class . title)
				(background . ,title)
				(top-edge . -21)
				(left-edge . 26)
				(right-edge . 51)
				(text . ,window-name)
				(foreground . ,text-colors)
				(x-justify . center)
				(y-justify . 2)
			)
			;; topleft
			(
				(class . top-left-corner)
				(background . ,topleft)
				(below-client . true)
				(top-edge . -24)
				(left-edge . -3)
			)
			;; topright
			(
				(class . top-right-corner)
				(background . ,topright)
				(below-client . true)
				(top-edge . -24)
				(right-edge . -3)
			)
			;; top
			(
				(class . top-border)
				(background . ,top)
				(top-edge . -24)
				(left-edge . 21)
				(right-edge . 21)
			)
			;; bottomleft
			(
				(class . bottom-left-corner)
				(background . ,bottomleft)
				(below-client . true)
				(bottom-edge . -3)
				(left-edge . -3)
			)
			;; bottomright
			(
				(class . bottom-right-corner)
				(background . ,bottomright)
				(below-client . true)
				(bottom-edge . -3)
				(right-edge . -3)
			)
			;; bottom
			(
				(class . bottom-border)
				(background . ,bottom)
				(bottom-edge . -3)
				(left-edge . 21)
				(right-edge . 21)
			)
			;; left
			(
				(class . left-border)
				(background . ,left)
				(left-edge . -3)
				(top-edge . 0)
				(bottom-edge . 21)
			)
			;; right
			(
				(class . right-border)
				(background . ,right)
				(right-edge . -3)
				(top-edge . 0)
				(bottom-edge . 21)
			)
		))
		(shaded-frame `(
			;; close button
			(
				(class . close-button)
				(background . ,close-button)
				(top-edge . -21)
				(right-edge . 0)
			)
			;; maximize button
			(
				(class . maximize-button)
				(background . ,maximize-button)
				(top-edge . -21)
				(right-edge . 17)
			)
			;; iconify button
			(
				(class . iconify-button)
				(background . ,iconify-button)
				(top-edge . -21)
				(right-edge . 34)
			)
			;; menu button
			(
				(class . menu-button)
				(background . ,menu-button)
				(top-edge . -21)
				(left-edge . 0)
			)
			;; title
			(
				(class . title)
				(background . ,title)
				(top-edge . -21)
				(left-edge . 26)
				(right-edge . 51)
				(text . ,window-name)
				(foreground . ,text-colors)
				(x-justify . center)
				(y-justify . 2)
			)
			;; topleft
			(
				(class . top-left-corner)
				(background . ,topleft)
				(below-client . true)
				(top-edge . -24)
				(left-edge . -3)
			)
			;; topright
			(
				(class . top-right-corner)
				(background . ,topright)
				(below-client . true)
				(top-edge . -24)
				(right-edge . -3)
			)
			;; top
			(
				(class . top-border)
				(background . ,top)
				(top-edge . -24)
				(left-edge . 21)
				(right-edge . 21)
			)
		))
	)
	(add-frame-style 'IceQua
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
