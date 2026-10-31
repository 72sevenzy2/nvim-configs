return {
    {
        "vyfor/cord.nvim",
        opts = {
            text = {
                editing = function(opts)
				return "pulverizing: ".. opts.filename
			 end,
            },
        },
    },
}


