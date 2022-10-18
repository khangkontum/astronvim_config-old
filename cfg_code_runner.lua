local cfg_code_runner = {
  requires = 'nvim-lua/plenary.nvim',
  config = function()
    require('code_runner').setup({
      -- put here the commands by filetype
      filetype = {
        java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        python = "python3 -u",
        typescript = "deno run",
        rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
      },
    })
  end,
}

return cfg_code_runner
