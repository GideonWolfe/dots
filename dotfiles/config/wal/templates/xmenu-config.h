static struct Config config = {{
	/* font */
	// .font = "monospace:size=9", [> for regular items <]
  // .font = "Hack:size=9,",
  .font = "HackNerdFont:size=9,FontAwesome:size=9",

	/* colors */
	.background_color = "{background}",
	.foreground_color = "{foreground}",
	.selbackground_color = "{background}",
	.selforeground_color = "{color2}",
	.separator_color = "{color4}",
	.border_color = "{color5}",

	/* sizes in pixels */
	.width_pixels = 130,        /* minimum width of a menu */
	.height_pixels = 25,        /* height of a single menu item */
	.border_pixels = 1,         /* menu border */
	.separator_pixels = 3,      /* space around separator */
	.gap_pixels = 0,            /* gap between menus */

	/*
	 * The variables below cannot be set by X resources.
	 * Their values must be less than .height_pixels.
	 */

	/* geometry of the right-pointing isoceles triangle for submenus */
	.triangle_width = 4,
	.triangle_height = 7,

	/* the icon size is equal to .height_pixels - .iconpadding * 2 */
	.iconpadding = 2,

	/* area around the icon, the triangle and the separator */
	.horzpadding = 10,
}};
