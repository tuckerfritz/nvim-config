return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "nvim-neotest/neotest-python",
            "nvim-neotest/nvim-nio",  -- Added this required dependency
        },
        config = function()
            local neotest = require("neotest")
            
            neotest.setup({
                adapters = {
                    require("neotest-python")({
                        -- Python path can be specified here
                        -- python = "/usr/bin/python3",
                        
                        -- Runner commands can be customized
                        runner = "pytest",
                        
                        -- Extra arguments for the runner
                        args = {"--verbose"},
                        
                        -- Test discovery roots
                        root = function(filename)
                            return vim.fn.getcwd()
                        end,
                    })
                },
                -- General settings
                summary = {
                    enabled = true,
                    follow = true,
                    expand_errors = true,
                },
                output = {
                    enabled = true,
                    open_on_run = true,
                },
            })

            -- Keymappings
            vim.keymap.set("n", "<leader>tt", function()
                neotest.run.run()
            end, { desc = "Run nearest test" })
            
            vim.keymap.set("n", "<leader>tf", function()
                neotest.run.run(vim.fn.expand("%"))
            end, { desc = "Run current file" })
            
            vim.keymap.set("n", "<leader>ts", function()
                neotest.summary.toggle()
            end, { desc = "Toggle test summary" })
            
            vim.keymap.set("n", "<leader>to", function()
                neotest.output.open({ enter = true })
            end, { desc = "Show test output" })
        end,
    }
}
