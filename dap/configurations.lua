return {
    dap = {
        configurations = {
            go = {
                -- Must be "go" or it will be ignored by the plugin
                type = "go",
                name = "Attach remote",
                mode = "remote",
                request = "attach",
            },
        },
    },
}
