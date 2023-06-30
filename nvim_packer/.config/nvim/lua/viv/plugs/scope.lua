local scope_setup, scope = pcall(require, "scope")
if not score_setup then
	return
end

scope.setup()
