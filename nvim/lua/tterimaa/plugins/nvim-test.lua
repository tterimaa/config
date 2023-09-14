local test_status, test = pcall(require, "nvim-test")
if not test_status then
	return
end

local jest_runner_status, jest_runner = pcall(require, "nvim-test.runners.jest")
if not jest_runner_status then
	return
end

jest_runner:setup({
	args = { "--config=/Users/tarmo.terimaa/code/projects/config-transport-tool-frontend/jest.config.js" },
})

test.setup({})
