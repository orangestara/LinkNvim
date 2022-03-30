# 说明文档
---
## 目录列表
```
.
├── README.md
├── ftplugin
│   ├── conf.lua
│   ├── cpp.lua
│   ├── lua.lua
│   └── python.lua
├── init.lua
└── lua
    ├── conf
    │   └── impatient.lua
    └── core
        ├── keybinds.lua
        ├── options.lua
        ├── plugins.lua
        └── settings.lua
```
一级目录说明：
- init.lua: 入口文件
- ftplugin: 存放不同文件类型的代码规则文件
- lua: 主目录程序

二级目录说明：
- lua/conf: 存放插件配置，每个插件生成配置文件
- lua/core: 核心配置文件


## 键位映射
基础键位
| 模式 | 键位 | 说明 |
| :--: | :--: | :--: |
| n | <Esc> | 关闭搜索高亮 |
| n | <C-u> | 向上移动10行 |
| n | <C-d> | 向下移动10行 |
| n | H | 到本行字符开始处 |
| n | L | 到本行字符结束处 |
| n | <M-k> | 增加分屏高度 |
| n | <M-j> | 缩小分屏高度 |
| n | <M-h> | 增加分屏宽度 |
| n | <M-l> | 缩小分屏宽度 |
| v | H | 到本行字符开始处 |
| v | L | 到本行字符结束处 |
| i | jj | 退出插入模式 |
| i | <M-k> | 光标向上移动 |
| i | <M-j> | 光标向下移动 |
| i | <M-h> | 光标向左移动 |
| i | <M-l> | 光标向右移动 |
