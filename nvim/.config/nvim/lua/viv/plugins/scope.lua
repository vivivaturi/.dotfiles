local scope_setup, scope = pcall(require, "scope")
if not scope_setup then
	return
end

scope.setup()
