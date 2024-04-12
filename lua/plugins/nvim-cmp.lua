return {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      {'L3MON4D3/LuaSnip'},
    },
    config = function()
      -- Here is where you configure the autocompletion settings.
      local lsp_zero = require('lsp-zero')
      lsp_zero.extend_cmp()

      -- And you can configure cmp even more, if you want to.
      local cmp = require('cmp')
      local cmp_action = lsp_zero.cmp_action()

      cmp.setup({
        formatting = lsp_zero.cmp_format({details = true}),
        mapping = {
          -- If nothing is selected (including preselections) add a newline as usual.
                            -- If something has explicitly been selected by the user, select it.
                            ["<Enter>"] = function(fallback)
                                -- Don't block <CR> if signature help is active
                                -- https://github.com/hrsh7th/cmp-nvim-lsp-signature-help/issues/13
                                if not cmp.visible() or not cmp.get_selected_entry() or cmp.get_selected_entry().source.name == 'nvim_lsp_signature_help' then
                                    fallback()
                                else
                                    cmp.confirm({
                                        -- Replace word if completing in the middle of a word
                                        -- https://github.com/hrsh7th/nvim-cmp/issues/664
                                        behavior = cmp.ConfirmBehavior.Replace,
                                        -- Don't select first item on CR if nothing was selected
                                        select = false,
                                    })
                                end
                            end,
                            ["<Tab>"] = cmp.mapping(function(fallback)
                                -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
                                if cmp.visible() then
                                    local entry = cmp.get_selected_entry()
                                    if not entry then
                                        cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                                    else
                                        cmp.confirm()
                                    end
                                else
                                    fallback()
                                end
                            end, { "i", "s", "c", }),
        }, 
       -- cmp.mapping.preset.insert({
       --   ['<C-Tab>'] = cmp.mapping.complete(),
       --   ['<C-u>'] = cmp.mapping.scroll_docs(-4),
       --   ['<C-d>'] = cmp.mapping.scroll_docs(4),
       --   ['<C-f>'] = cmp_action.luasnip_jump_forward(),
       --   ['<C-b>'] = cmp_action.luasnip_jump_backward(),
       -- }),
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
      })
    end
  }
