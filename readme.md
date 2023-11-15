# lsp-info

```lua
{
    "i314q159/lsp-info",
    opts = {},
},
```

```lua
lualine_x = {
    {
        function()
            return require("lsp-info").lsp_info()
        end,
    }
}
```
