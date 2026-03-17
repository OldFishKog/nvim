require('lualine').setup({
	options = {
		icons_enabled = not is_tty,
	},
  sections = {
    lualine_a = {
      {
        'mode',
        fmt = function(str)
          -- 定义英文模式名到中文的映射表
          local mode_map = {
            ['NORMAL']   = '普通',
            ['INSERT']   = '插入',
            ['VISUAL']   = '可视',
            ['V-LINE']   = '可视-行',
            ['V-BLOCK']  = '可视-块',
            ['SELECT']   = '选择',
            ['COMMAND']  = '命令',
            ['TERMINAL'] = '终端',
            ['REPLACE']  = '替换',
          }
          -- 如果在表中找到则返回中文，否则返回原始字符串
          return mode_map[str] or str
        end
      }
    },
    -- 其他 section 配置...
  }
})
