return {
  'ckipp01/nvim-jenkinsfile-linter',
  requires = { "nvim-lua/plenary.nvim" },

  config = function()
    require("jenkinsfile_linter").validate()
  end
}
