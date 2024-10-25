{
  plugins = {
    # Status bar
    lualine = { enable = true; };

    # Make `nvim .` look prettier
    oil = { enable = true; };

    # Includes all parsers for treesitter
    treesitter = { enable = true; };

    # Icons 
    web-devicons.enable = true;

    none-ls = {
      enable = true;
      settings = {
        cmd = [ "bash -c nvim" ];
        debug = true;
      };
      sources = {
        code_actions = {
          # ts-ls.enable = true; # TS/JS
          statix.enable = true;
          gitsigns.enable = true;
        };
        diagnostics = {
          statix.enable = true;
          deadnix.enable = true;
          pylint.enable = true;
          checkstyle.enable = true;
        };
        formatting = {
          alejandra.enable = true;
          stylua.enable = true;
          shfmt.enable = true;
          nixpkgs_fmt.enable = true;
          google_java_format.enable = false;
          prettier = {
            enable = true;
            disableTsServerFormatter = true;
          };
          black = {
            enable = true;
            settings = ''
              {
                extra_args = { "--fast" },
              }
            '';

          };
        };
        completion = {
          luasnip.enable = true;
          spell.enable = true;
        };
      };
    };

    # Debugger
    dap = {
      enable = true;
      signs = {
        dapBreakpoint = {
          text = "●";
          texthl = "DapBreakpoint";
        };
        dapBreakpointCondition = {
          text = "●";
          texthl = "DapBreakpointCondition";
        };
        dapLogPoint = {
          text = "◆";
          texthl = "DapLogPoint";
        };
      };
      extensions = {
        dap-python = { enable = true; };
        dap-ui = {
          enable = true;
          floating.mappings = { close = [ "<ESC>" "q" ]; };
        };
        dap-virtual-text = { enable = true; };
      };
      configurations = {
        java = [{
          type = "java";
          request = "launch";
          name = "Debug (Attach) - Remote";
          hostName = "127.0.0.1";
          port = 5005;
        }];
      };
    };

    # Trouble
    trouble = { enable = true; };

    # Friendly Snippets 
    friendly-snippets = { enable = true; };

    # Code snippets
    luasnip = {
      enable = true;
      settings = {
        enable_autosnippets = true;
        store_selection_keys = "<Tab>";
      };
      fromSnipmate = [
        {
          paths = ./vim-snippets/snippets/markdown.snippets;
          include = [ "markdown" ];
        }
        {
          paths = ./vim-snippets/snippets/html.snippets;
          include = [ "html" ];
        }
        {
          paths = ./vim-snippets/snippets/go.snippets;
          include = [ "go" ];
        }
        {
          paths = ./vim-snippets/snippets/rust.snippets;
          include = [ "rust" ];
        }
        {
          paths = ./vim-snippets/snippets/php.snippets;
          include = [ "php" ];
        }
        {
          paths = ./vim-snippets/snippets/lua.snippets;
          include = [ "lua" ];
        }
        {
          paths = ./vim-snippets/snippets/c.snippets;
          include = [ "c" ];
        }
        {
          paths = ./vim-snippets/snippets/css.snippets;
          include = [ "css" ];
        }
        {
          paths = ./vim-snippets/snippets/javascript/javascript.snippets;
          include = [ "javascript" ];
        }
        {
          paths = ./vim-snippets/snippets/javascript/javascript-react.snippets;
          include = [ "javascript-react" ];
        }
        {
          paths = ./vim-snippets/UltiSnips/javascript-node.snippets;
          include = [ "javascript-node" ];
        }
        {
          paths = ./vim-snippets/snippets/typescript.snippets;
          include = [ "typescript" ];
        }
        {
          paths = ./vim-snippets/snippets/typescriptreact.snippets;
          include = [ "typescript-react" ];
        }
        {
          paths = ./vim-snippets/snippets/sh.snippets;
          include = [ "sh" ];
        }
        {
          paths = ./vim-snippets/snippets/bash.snippets;
          include = [ "bash" ];
        }
        {
          paths = ./vim-snippets/snippets/zsh.snippets;
          include = [ "zsh" ];
        }
      ];
    };

    # Good old Telescope
    telescope = {
      enable = true;
      extensions = { fzf-native = { enable = true; }; };
    };

    undotree = {
      enable = true;
      settings = {
        autoOpenDiff = true;
        focusOnToggle = true;
      };
    };

    # Language server
    lsp = {
      enable = true;
      servers = {
        # Average webdev LSPs
        ts_ls.enable = true; # TS/JS
        cssls.enable = true; # CSS
        #tailwindcss.enable = true; # TailwindCSS
        html.enable = true; # HTML
        #astro.enable = true; # AstroJS
        #phpactor.enable = true; # PHP
        #svelte.enable = false; # Svelte
        #vuels.enable = false; # Vue
        #pyright.enable = true; # Python
        marksman.enable = true; # Markdown
        nil_ls.enable = true; # Nix
        #dockerls.enable = true; # Docker
        bashls.enable = true; # Bash
        #clangd.enable = true; # C/C++
        #csharp_ls.enable = true; # C#
        yamlls.enable = true; # YAML
        ltex = {
          enable = true;
          settings = {
            enabled =
              [ "astro" "html" "latex" "markdown" "text" "tex" "gitcommit" ];
            completionEnabled = true;
            language = "en-US pt";
            # dictionary = {
            #   "nl-NL" = [
            #     ":/home/liv/.local/share/nvim/ltex/nl-NL.txt"
            #   ];
            #   "en-US" = [
            #     ":/home/liv/.local/share/nvim/ltex/en-US.txt"
            #   ];
            #   "de-DE" = [
            #     ":/home/liv/.local/share/nvim/ltex/de-DE.txt"
            #   ];
            # };
          };
        };
        gopls = { # Golang
          enable = true;
          autostart = true;
        };

        lua_ls = { # Lua
          enable = true;
          settings.telemetry.enable = false;
        };

        # Rust
        rust_analyzer = {
          enable = true;
          installRustc = true;
          installCargo = true;
        };
      };
    };

    # Even more snippets
    nvim-snippets = {
      enable = false;
      settings = {
        create_autocmd = true;
        create_cmp_source = true;
        extended_filetypes = { typescript = [ "javascript" ]; };
        friendly_snippets = true;
        global_snippets = [ "all" ];
        ignored_filetypes = [
          #  "lua"
        ];
        search_paths = [{ __raw = "vim.fn.stdpath('config') .. '/snippets'"; }];
      };
    };

    cmp-emoji = { enable = true; };

    cmp = {
      enable = true;
      settings = {
        completion = { completeopt = "menu,menuone,noinsert"; };
        autoEnableSources = true;
        experimental = { ghost_text = true; };
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };
        snippet = {
          expand = ''
            function(args)
              require('luasnip').lsp_expand(args.body)
            end
          '';
        };
        formatting = { fields = [ "kind" "abbr" "menu" ]; };
        sources = [
          { name = "nvim_lsp"; }
          { name = "emoji"; }
          {
            name = "buffer"; # text within current buffer
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            keywordLength = 3;
          }
          # { name = "copilot"; } # enable/disable copilot
          {
            name = "path"; # file system paths
            keywordLength = 3;
          }
          {
            name = "luasnip"; # snippets
            keywordLength = 3;
          }
        ];

        window = {
          completion = { border = "solid"; };
          documentation = { border = "solid"; };
        };

        mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-CR>" =
            "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
          "<C-l>" = ''
            cmp.mapping(function()
              if luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
              end
            end, { 'i', 's' })
          '';
          "<C-h>" = ''
            cmp.mapping(function()
              if luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
              end
            end, { 'i', 's' })
          '';
        };
      };
    };
    cmp-nvim-lsp = {
      enable = true; # LSP
    };
    cmp-buffer = { enable = true; };
    cmp-path = {
      enable = true; # file system paths
    };
    cmp_luasnip = {
      enable = true; # snippets
    };
    cmp-cmdline = {
      enable = true; # autocomplete for cmdline
    };

    lspkind = {
      enable = true;
      symbolMap = { Copilot = ""; };
      extraOptions = {
        maxwidth = 50;
        ellipsis_char = "...";
      };
    };

    fidget = {
      enable = true;
      logger = {
        level = "warn"; # “off”, “error”, “warn”, “info”, “debug”, “trace”
        floatPrecision =
          1.0e-2; # Limit the number of decimals displayed for floats
      };
      progress = {
        pollRate = 0; # How and when to poll for progress messages
        suppressOnInsert = true; # Suppress new messages while in insert mode
        ignoreDoneAlready = false; # Ignore new tasks that are already complete
        ignoreEmptyMessage =
          false; # Ignore new tasks that don't contain a message
        clearOnDetach =
          # Clear notification group when LSP server detaches
          ''
            function(client_id)
              local client = vim.lsp.get_client_by_id(client_id)
              return client and client.name or nil
            end
          '';
        notificationGroup =
          # How to get a progress message's notification group key
          ''
            function(msg) return msg.lsp_client.name end
          '';
        ignore = [ ]; # List of LSP servers to ignore
        lsp = {
          progressRingbufSize =
            0; # Configure the nvim's LSP progress ring buffer size
        };
        display = {
          renderLimit = 16; # How many LSP messages to show at once
          doneTtl = 3; # How long a message should persist after completion
          doneIcon = "✔"; # Icon shown when all LSP progress tasks are complete
          doneStyle = "Constant"; # Highlight group for completed LSP tasks
          progressTtl =
            "math.huge"; # How long a message should persist when in progress
          progressIcon = {
            pattern = "dots";
            period = 1;
          }; # Icon shown when LSP progress tasks are in progress
          progressStyle =
            "WarningMsg"; # Highlight group for in-progress LSP tasks
          groupStyle =
            "Title"; # Highlight group for group name (LSP server name)
          iconStyle = "Question"; # Highlight group for group icons
          priority = 30; # Ordering priority for LSP notification group
          skipHistory =
            true; # Whether progress notifications should be omitted from history
          formatMessage = ''
            require ("fidget.progress.display").default_format_message
          ''; # How to format a progress message
          formatAnnote = ''
            function (msg) return msg.title end
          ''; # How to format a progress annotation
          formatGroupName = ''
            function (group) return tostring (group) end
          ''; # How to format a progress notification group's name
          overrides = {
            rust_analyzer = { name = "rust-analyzer"; };
          }; # Override options from the default notification config
        };
      };
      notification = {
        pollRate = 10; # How frequently to update and render notifications
        filter = "info"; # “off”, “error”, “warn”, “info”, “debug”, “trace”
        historySize = 128; # Number of removed messages to retain in history
        overrideVimNotify = true;
        redirect = ''
          function(msg, level, opts)
            if opts and opts.on_open then
              return require("fidget.integration.nvim-notify").delegate(msg, level, opts)
            end
          end
        '';
        configs = {
          default = "require('fidget.notification').default_config";
        };

        window = {
          normalHl = "Comment";
          winblend = 0;
          border = "none"; # none, single, double, rounded, solid, shadow
          zindex = 45;
          maxWidth = 0;
          maxHeight = 0;
          xPadding = 1;
          yPadding = 0;
          align = "bottom";
          relative = "editor";
        };
        view = {
          stackUpwards = true; # Display notification items from bottom to top
          iconSeparator = " "; # Separator between group name and icon
          groupSeparator = "---"; # Separator between notification groups
          groupSeparatorHl =
            # Highlight group used for group separator
            "Comment";
        };
      };
    };

  };

  extraConfigVim = "";

  extraConfigLuaPre = ''
    if vim.g.have_nerd_font then
      require('nvim-web-devicons').setup {}
    end
  '';

  extraConfigLuaPost = ''
    -- vim: ts=2 sts=2 sw=2 et
  '';

  extraConfigLua = ''

      luasnip = require("luasnip")
      kind_icons = {
        Text = "󰊄",
        Method = "",
        Function = "󰡱",
        Constructor = "",
        Field = "",
        Variable = "󱀍",
        Class = "",
        Interface = "",
        Module = "󰕳",
        Property = "",
        Unit = "",
        Value = "",
        Enum = "",
        Keyword = "",
        Snippet = "",
        Color = "",
        File = "",
        Reference = "",
        Folder = "",
        EnumMember = "",
        Constant = "",
        Struct = "",
        Event = "",
        Operator = "",
        TypeParameter = "",
      } 

      local cmp = require'cmp'

      -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline({'/', "?" }, {
        sources = {
          { name = 'buffer' }
        }
      })

      -- Set configuration for specific filetype.
       cmp.setup.filetype('gitcommit', {
         sources = cmp.config.sources({
           { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
         }, {
           { name = 'buffer' },
         })
       })

       -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
       cmp.setup.cmdline(':', {
         sources = cmp.config.sources({
           { name = 'path' }
         }, {
           { name = 'cmdline' }
         }),
    --      formatting = {
    --       format = function(_, vim_item)
    --         vim_item.kind = cmdIcons[vim_item.kind] or "FOO"
    --       return vim_item
    --      end
    -- }
         })  '';

  colorschemes.catppuccin = {
    enable = true;
    settings = { flavour = "macchiato"; };
  };

}
