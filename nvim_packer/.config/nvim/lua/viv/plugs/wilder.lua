local wilder_setup, wilder = pcall(require, "wilder")
if not wilder_setup then
	return
end

wilder.setup({
	modes = { ":", "/", "?" },
})

wilder.set_option(
	"renderer",
	wilder.popupmenu_renderer({
		highlighter = wilder.basic_highlighter(),
		left = { " ", wilder.popupmenu_devicons() },
		right = { " ", wilder.popupmenu_scrollbar() },
	})
)
