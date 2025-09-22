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

# 处理所有任务（时间较长）
npm run scrape
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
-c, --count <数量>    # 处理指定数量的任务
-q, --quests <列表>   # 处理指定任务ID（逗号分隔）
--headless           # 无头模式（后台运行）
--show-browser       # 显示浏览器窗口（默认）
-d, --delay <毫秒>   # 请求间隔（默认：3000ms）
-o, --output <路径>  # 输出文件路径
```

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

3. **故障排除**:
   ```bash
   npm run scrape-debug    # 查看详细过程
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

## 📊 性能参考

- **数据合并**: 通常 < 30秒
- **单任务抓取**: 5-10秒（包含物品详情）
- **100任务批量**: 约30-60分钟（取决于网络和间隔设置）
- **内存使用**: 浏览器模式 ~200MB，无头模式 ~100MB