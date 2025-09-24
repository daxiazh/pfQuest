# pfQuest 数据处理工具集

这是一个完整的 pfQuest 插件数据处理工具集，包含数据合并和任务奖励抓取功能。

## 🛠️ 工具概览

### 1. 任务数据合并工具
- **文件**: `index.js`, `quest-merger.js`, `lua-parser.js`
- **功能**: 合并基础任务数据和乌龟服数据，生成有效任务ID列表
- **输出**: `output/valid-quest-ids.json`

### 2. 任务奖励抓取工具 (Selenium)
- **文件**: `scrape-quest-rewards-selenium.js`, `quest-reward-scraper-selenium.js`
- **功能**: 使用真实浏览器抓取任务奖励和物品信息
- **输出**: `output/quest-rewards-selenium.json`

### 3. 任务奖励数据转换工具 ⭐ 新增
- **文件**: `convert-quest-rewards-to-lua.js`
- **功能**: 将抓取的JSON数据转换为pfQuest-turtle可用的Lua格式
- **输出**: `pfQuest-turtle/db/quest-rewards-turtle.lua`, `pfQuest-turtle/db/item-props-turtle.lua`

## 🚀 快速开始

### 安装依赖
```bash
cd Tools
npm install
```

### 基本使用流程

#### 步骤1: 合并任务数据
```bash
# 生成有效任务ID列表
npm start
# 或
npm run merge
```

#### 步骤2: 抓取任务奖励
```bash
# 调试单个任务（推荐首次使用）
npm run scrape-debug

# 处理少量任务
npm run scrape-sample

# 后台批量处理
npm run scrape-headless

# 处理所有任务（时间较长，支持增量处理）
npm run scrape-all

# 后台处理所有任务（推荐）
npm run scrape-all-headless
```

#### 步骤3: 转换为Lua格式 ⭐ 新增
```bash
# 转换JSON数据为pfQuest-turtle Lua格式
npm run convert

# 测试转换结果
npm run test-conversion
```

## 📋 详细使用说明

### 任务数据合并工具

**基本用法:**
```bash
node index.js [--full]
```

**功能:**
- 解析 pfQuest 基础任务数据
- 合并乌龟服自定义数据
- 应用删除和覆盖操作
- 生成统一的任务ID列表

**输出文件:**
- `valid-quest-ids.json` - 基础任务ID列表
- `quest-data-detailed.json` - 详细统计信息
- `merged-quest-data.json` - 完整合并数据（使用 --full）

### 任务奖励抓取工具 (推荐)

**基本用法:**
```bash
node scrape-quest-rewards-selenium.js [选项]
```

**主要选项:**
```bash
--debug [任务ID]      # 调试模式，显示浏览器（默认：41188）
-a, --all            # 处理所有任务（自动启用增量处理）
-c, --count <数量>    # 处理指定数量的任务
-q, --quests <列表>   # 处理指定任务ID（逗号分隔）
--headless           # 无头模式（后台运行）
--show-browser       # 显示浏览器窗口（默认）
-d, --delay <毫秒>   # 请求间隔（默认：3000ms）
-o, --output <路径>  # 输出文件路径
```

**✨ 增量处理功能 (All 模式)**
- 🔄 **自动断点续传**: 程序意外中断后重新启动会从上次处理的位置继续
- 💾 **进度实时保存**: 每10个任务自动保存一次完整数据
- 📝 **进度文件跟踪**: 生成 `*-progress.json` 文件记录当前进度
- 🔄 **数据增量合并**: 新数据会与现有数据合并，而不是覆盖
- ⏭️ **智能跳过**: 自动跳过已处理的任务，避免重复工作

**使用示例:**
```bash
# 调试单个任务
node scrape-quest-rewards-selenium.js --debug

# 处理指定任务
node scrape-quest-rewards-selenium.js -q 41188,41209,50001

# 无头模式处理50个任务
node scrape-quest-rewards-selenium.js --headless -c 50

# 自定义间隔和输出
node scrape-quest-rewards-selenium.js -d 5000 -o my-rewards.json

# All 模式（推荐用于大规模处理）
node scrape-quest-rewards-selenium.js --all --headless
```

### 任务奖励数据转换工具 ⭐ 新增

**基本用法:**
```bash
node convert-quest-rewards-to-lua.js
```

**功能:**
- 读取 `output/quest-rewards-selenium.json` 文件
- 使用 WoW 官方 ItemType 分类系统对物品进行分类
- 自动检测并复用现有 pfQuest 物品名称数据
- 生成紧凑的数字数组格式 Lua 文件

**输出文件:**
- `pfQuest-turtle/db/quest-rewards-turtle.lua` - 任务奖励数据
- `pfQuest-turtle/db/item-props-turtle.lua` - 物品属性数据
- `pfQuest-turtle/db/zhCN/quest-items-turtle.lua` - 新增物品名称（如需要）

**数据格式:**
```lua
-- 任务奖励: [questId] = {itemId1, itemId2, ...}
[6] = {6076, 60, 3070}

-- 物品属性: [itemId] = {quality, class, subclass}
[60] = {1, 4, 2}  -- 普通品质，护甲类，皮甲子类
```

**品质编码**: 0=劣质, 1=普通, 2=优秀, 3=精良, 4=史诗, 5=传说, 6=神器  
**类型编码**: 0=消耗品, 1=容器, 2=武器, 4=护甲, 7=商品, 9=配方, 12=任务物品, 15=杂项

**使用示例:**
```bash
# 基本转换
node convert-quest-rewards-to-lua.js

# 启用调试模式
DEBUG=1 node convert-quest-rewards-to-lua.js

# 测试转换结果
node test-conversion.js
```

## 🔧 系统要求

### 基础要求
- **Node.js** 12.0 或更高版本
- **npm** 包管理器

### Selenium 抓取工具额外要求
- **Chrome 浏览器** - 必须安装
- **ChromeDriver** - 会自动下载管理
- **足够内存** - 建议至少 4GB RAM

## 📁 输出文件结构

### 任务ID文件 (`valid-quest-ids.json`)
```json
{
  "timestamp": "2024-01-01T00:00:00.000Z",
  "validQuestIds": [1, 2, 3, ...],
  "stats": {
    "baseCount": 2847,
    "turtleCount": 245,
    "validCount": 2921,
    "deletedCount": 15,
    "addedCount": 230
  }
}
```

### 任务奖励文件 (`quest-rewards-selenium.json`)
```json
{
  "timestamp": "2024-01-01T00:00:00.000Z",
  "stats": { ... },
  "questRewards": {
    "41188": {
      "questId": 41188,
      "title": "任务标题",
      "rewardItems": [{"itemId": 25815, "name": "物品名称", "quantity": 1}],
      "choiceItems": [...],
      "experience": 6600,
      "money": 55000
    }
  },
  "itemDetails": {
    "25815": {
      "itemId": 25815,
      "name": "恶魔布长袍",
      "type": "Armor",
      "subtype": "Cloth",
      "quality": "Uncommon",
      "level": 54,
      "requiredLevel": 49
    }
  }
}
```

## 🎯 NPM 脚本快捷方式

| 脚本 | 命令 | 描述 |
|------|------|------|
| `npm start` | `node index.js` | 数据合并工具 |
| `npm run merge` | `node quest-merger.js` | 数据合并工具 |
| `npm run scrape` | 默认抓取 | 使用 Selenium 抓取 |
| `npm run scrape-debug` | 调试模式 | 单任务调试 |
| `npm run scrape-sample` | 样本测试 | 处理5个任务 |
| `npm run scrape-headless` | 后台模式 | 无界面处理10个任务 |
| `npm run scrape-all` | 全量处理 | 处理所有任务，支持增量 |
| `npm run scrape-all-headless` | 全量后台 | 后台处理所有任务 |
| `npm run convert` ⭐ | `node convert-quest-rewards-to-lua.js` | 转换JSON为Lua格式 |
| `npm run test-conversion` ⭐ | `node test-conversion.js` | 测试转换结果 |

## 🐛 VSCode 调试配置

项目包含完整的 VSCode 调试配置：

1. **调试任务数据合并器** - 调试数据合并过程
2. **调试 Selenium 任务抓取器** - 调试任务奖励抓取
3. **调试 Selenium 指定任务** - 调试特定任务ID

使用方法：
1. 在 VSCode 中打开 `Tools` 目录
2. 按 `F5` 或点击"运行和调试"
3. 选择相应的调试配置

## ⚠️ 注意事项

### 数据合并工具
- 确保 pfQuest 数据文件存在
- 合并操作是覆盖式的
- 删除操作不可逆

### 任务奖励抓取工具
- 首次运行可能需要下载 ChromeDriver
- 建议先使用 `--debug` 模式测试
- 大批量抓取请使用 `--headless` 模式
- 可以随时按 `Ctrl+C` 中断并保存进度
- 建议设置合理的请求间隔避免服务器限制

### 性能建议
- **小规模测试**: 先用 `-c 5` 测试
- **中等规模**: 使用 `-c 50` 
- **大规模处理**: 使用 `--headless` 模式
- **调试问题**: 使用 `--debug` 模式观察

## 🔄 工作流程建议

1. **初次使用**:
   ```bash
   npm install              # 安装依赖
   npm start               # 生成任务ID列表
   npm run scrape-debug    # 测试单个任务抓取
   ```

2. **日常使用**:
   ```bash
   npm run scrape-sample   # 小规模测试
   npm run scrape-headless # 批量处理
   ```

3. **大规模处理**:
   ```bash
   npm run scrape-all-headless  # 后台处理所有任务
   # 支持断点续传，可随时中断和恢复
   ```

4. **故障排除**:
   ```bash
   npm run scrape-debug    # 查看详细过程
   npm run test-incremental # 测试增量处理功能
   # 检查浏览器和网络环境
   ```

## 🆘 常见问题

**Q: ChromeDriver 下载失败？**
A: 检查网络连接，或手动下载 ChromeDriver 并放置在系统 PATH 中

**Q: 页面加载超时？**
A: 增加 `--delay` 参数，如 `-d 5000`

**Q: 内存不足？**
A: 使用 `--headless` 模式，或减少并发处理数量

**Q: 数据不完整？**
A: 检查网络连接，重新运行抓取工具会自动跳过已处理的项目

**Q: 如何从中断处继续？**
A: All模式支持自动断点续传，直接重新运行相同命令即可

**Q: 如何重新开始处理？**
A: 删除输出文件和进度文件（*-progress.json），重新运行命令

**Q: 进度文件的作用？**
A: 记录最后处理的任务ID，支持断点续传，避免重复处理

## 📊 性能参考

- **数据合并**: 通常 < 30秒
- **单任务抓取**: 5-10秒（包含物品详情）
- **100任务批量**: 约30-60分钟（取决于网络和间隔设置）
- **内存使用**: 浏览器模式 ~200MB，无头模式 ~100MB