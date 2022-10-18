local config = {
          'CRAG666/code_runner.nvim',
          requires = 'nvim-lua/plenary.nvim',
          config = function()
            require('code_runner').setup({
              -- put here the commands by filetype
              filetype = {
                java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
                python = "python -u",
                typescript = "deno run",
                rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
                go = "cd $dir && go run $fileName",
                lua = "echo \'test chuc nang\'"
              },
            })
          end,
}

return config
