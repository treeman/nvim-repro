vim.loader.enable()

vim.pack.add({
	"https://github.com/aileot/nvim-thyme",
	"https://git.sr.ht/~technomancy/fennel",
	"https://github.com/aileot/nvim-laurel",
	"https://github.com/BirdeeHub/lze",
	"https://github.com/lumen-oss/rtp.nvim",
}, { confirm = false })

table.insert(package.loaders, function(...)
	return require("thyme").loader(...)
end)

local thyme_cache_prefix = vim.fn.stdpath("cache") .. "/thyme/compiled"
vim.opt.rtp:prepend(thyme_cache_prefix)

require("config")
