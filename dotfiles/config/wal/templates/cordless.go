package main

import (
	"encoding/json"
	"fmt"
	"os"
	"strings"

	"github.com/Bios-Marcel/cordless/tview"
	"github.com/gdamore/tcell"

	"github.com/Bios-Marcel/cordless/config"
)

func main() {{
	theme := &config.Theme{{
		Theme: &tview.Theme{{
			PrimitiveBackgroundColor:    tcell.NewRGBColor({background.rgb}),
			ContrastBackgroundColor:     tcell.NewRGBColor({color8.rgb}),
			MoreContrastBackgroundColor: tcell.NewRGBColor({color7.rgb}),
			BorderColor:                 tcell.NewRGBColor({foreground.rgb}),
			BorderFocusColor:            tcell.NewRGBColor({color5.rgb}),
			TitleColor:                  tcell.NewRGBColor({color2.rgb}),
			GraphicsColor:               tcell.NewRGBColor({color12.rgb}),
			PrimaryTextColor:            tcell.NewRGBColor({color3.rgb}),
			SecondaryTextColor:          tcell.NewRGBColor({color4.rgb}),
			TertiaryTextColor:           tcell.NewRGBColor({color6.rgb}),
			InverseTextColor:            tcell.NewRGBColor({color5.rgb}),
			ContrastSecondaryTextColor:  tcell.NewRGBColor({color6.rgb}),
		}},
		BlockedUserColor: tcell.NewRGBColor({color1.rgb}),
		InfoMessageColor: tcell.NewRGBColor({foreground.rgb}),
		BotColor:         tcell.NewRGBColor({color12.rgb}),
		MessageTimeColor: tcell.NewRGBColor({color7.rgb}),
		LinkColor:        tcell.NewRGBColor({color10.rgb}),
		DefaultUserColor: tcell.NewRGBColor({color5.rgb}),
		AttentionColor:   tcell.NewRGBColor({color11.rgb}),
		ErrorColor:       tcell.NewRGBColor({color9.rgb}),
		RandomUserColors: []tcell.Color{{
			tcell.NewRGBColor({color1.rgb}),
			tcell.NewRGBColor({color2.rgb}),
			tcell.NewRGBColor({color3.rgb}),
			tcell.NewRGBColor({color4.rgb}),
			tcell.NewRGBColor({color5.rgb}),
			tcell.NewRGBColor({color6.rgb}),
			tcell.NewRGBColor({color7.rgb}),
			tcell.NewRGBColor({color8.rgb}),
			tcell.NewRGBColor({color9.rgb}),
			tcell.NewRGBColor({color10.rgb}),
			tcell.NewRGBColor({color11.rgb}),
			tcell.NewRGBColor({color12.rgb}),
		}},
	}}

	encoder := json.NewEncoder(os.Stdout)
	encoder.SetIndent("", "    ")
	encoder.Encode(theme)
}}

// Usage: fromHex("#FF0000")
func fromHex(hexString string) tcell.Color {{
	trimmed := strings.TrimPrefix(strings.TrimSpace(hexString), "#")
	var r, g, b int32
	fmt.Sscanf(trimmed, "%02x%02x%02x", &r, &g, &b)
	return tcell.NewRGBColor(r, g, b)
}}

// lilcomment
