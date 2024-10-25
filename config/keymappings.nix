{
	globals.mapleader = " ";

	keymaps = [
		{
			mode = "v";
			key = "J";
			action = ":m '>+1<CR>gv=gv";
			options = { desc = "move selection a line down"; };
		}
		{
			mode = "v";
			key = "K";
			action = ":m '<-2<CR>gv=gv";
			options = { desc = "move selection a line up"; };
		}
		{
			mode = "n";
			key = "<C-d>";
			action = "<C-d>zz";
			options = { desc = "jump 1/2 downwards and center line"; };
		}
		{
			mode = "n";
			key = "<C-u>";
			action = "<C-u>zz";
			options = { desc = "jump 1/2 upwards and center line"; };
		}
		{
			mode = "n";
			key = "<leader>y";
			action = ''"+y'';
			options = { desc = "copy to clipboard"; };
		}
		{
			mode = "n";
			key = "<leader>Y";
			action = ''"+y'';
			options = { desc = "copy to clipboard"; };
		}
		{
			mode = "v";
			key = "<leader>y";
			action = ''"+y'';
			options = { desc = "copy to clipboard"; };
		}
		{
			mode = "n";
			key = "<leader>d";
			action = ''"_d'';
			options = { desc = "delete"; };
		}
		{
			mode = "v";
			key = "<leader>d";
			action = ''"_d'';
			options = { desc = "delete"; };
		}

		# Undotree
		{
			mode = "n";
			key = "<leader>ut";
			action = "<cmd>UndotreeToggle<CR>";
			options = { desc = "Undotree"; };
		}

		# Telescope bindings

		{
			action = "<cmd>Telescope live_grep<CR>";
			key = "<leader>fw";
		}
		{
			action = "<cmd>Telescope find_files<CR>";
			key = "<leader>ff";
		}
		{
			action = "<cmd>Telescope git_commits<CR>";
			key = "<leader>fg";
		}
		{
			action = "<cmd>Telescope oldfiles<CR>";
			key = "<leader>fh";
		}
		{
			action = "<cmd>Telescope colorscheme<CR>";
			key = "<leader>ch";
		}
		{
			action = "<cmd>Telescope man_pages<CR>";
			key = "<leader>fm";
		}
	];
}
