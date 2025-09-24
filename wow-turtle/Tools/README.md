# pfQuest 数据处理工具集

现代化的 pfQuest 插件数据处理工具集，包含任务奖励抓取、数据转换和插件集成功能。

## 🛠️ 工具概览

### 1. 任务数据合并工具
- **文件**: `index.js`, `quest-merger.js`, `lua-parser.js`
- **功能**: 合并基础任务数据和乌龟服数据，生成有效任务ID列表
- **输出**: `output/valid-quest-ids.json`

### 2. HTML工具链 ⭐ 推荐
- **文件**: `html-downloader.js`, `data-analyzer.js`
- **功能**: 分离式HTML缓存和数据分析，提高开发效率
- **特性**: 断点续传、三阶段下载、Cloudflare绕过、100%品质识别准确率
- **输出**: 本地HTML缓存 + 结构化JSON数据

### 3. 数据转换工具
- **文件**: `convert-quest-rewards-to-lua.js`
- **功能**: 将JSON数据转换为pfQuest可用的Lua格式
- **输出**: `pfQuest/db/quest-rewards.lua`, `pfQuest/db/item-props.lua`

### 4. 传统Selenium工具 (备用)
- **文件**: `scrape-quest-rewards-selenium.js`
- **功能**: 生产环境大规模批量数据抓取
- **适用**: 一次性大量数据采集

## 🚀 快速开始

### 安装依赖
```bash
cd Tools
npm install
```

### 推荐工作流程

#### 步骤1: 生成任务ID列表
```bash
npm start
```

#### 步骤2: HTML工具链数据抓取 ⭐ 推荐
```bash
# 方式A: 完整模式 - 下载任务和物品页面（首次使用）
npm run download-html

# 方式B: 仅下载物品 - 从已有数据直接下载物品页面（推荐）
npm run download-items-only

# 从本地HTML分析数据（可多次执行）
npm run analyze-html

# 测试工具链完整性
npm run test-html-tools
```

#### 步骤3: 转换为Lua格式
```bash
# 转换JSON为pfQuest Lua格式
npm run convert
```

## 📋 详细使用说明

### HTML工具链 ⭐ 核心工具

HTML工具链是现代化的数据处理解决方案，将网页下载和数据分析分离，大幅提高开发效率。

#### 1. HTML下载器 (`html-downloader.js`)

**两种下载模式:**

**完整模式（首次使用）:**
```bash
npm run download-html
```
- 🌐 **三阶段下载**: 任务页面 → 提取物品ID → 物品页面
- 📋 **从任务ID列表开始**: 使用 `valid-quest-ids.json`

**仅物品模式（推荐）:**
```bash
npm run download-items-only
```
- 🎯 **直接下载物品**: 从 `quest-rewards-selenium.json` 的 `itemDetails` 提取物品ID
- ⚡ **跳过任务页面**: 无需下载任务页面，直接下载物品
- 📊 **3200+ 物品**: 支持大量物品的高效下载

**通用功能:**
- 📦 **智能断点续传**: 页面级精确控制，支持中途中断恢复
- 🛡️ **Cloudflare绕过**: 自动绕过反爬虫检测
- 💾 **本地缓存**: HTML文件缓存到 `cache/` 目录
- 📊 **实时进度条**: 显示当前状态、重试次数、预计完成时间

**断点续传特性:**
- ✅ 自动检测已下载的任务和物品
- ✅ 程序重启后自动从中断点继续
- ✅ 双重检查机制（进度文件 + 缓存文件）
- ✅ 支持 Ctrl+C 安全中断

#### 2. 数据分析器 (`data-analyzer.js`)

**基本用法:**
```bash
npm run analyze-html
```

**核心功能:**
- 🔍 **本地HTML解析**: 从缓存文件提取结构化数据
- 🎯 **严格数据验证**: 正则表达式精确匹配
- 📊 **100%品质识别**: Epic、Uncommon、Common等品质准确识别
- 🏷️ **WoW类型分类**: 武器、护甲等标准分类
- ⚡ **毫秒级处理**: 纯本地分析，无网络延迟

**输出数据格式:**
```json
{
  "timestamp": "2025-01-01T00:00:00.000Z",
  "stats": {
    "totalQuests": 100,
    "questsWithRewards": 85,
    "totalItems": 245
  },
  "questRewards": {
    "2": {
      "questId": 2,
      "rewardItems": [{"itemId": 6076, "quantity": 1}]
    }
  },
  "itemDetails": {
    "6076": {
      "itemId": 6076,
      "name": "Survival Belt",
      "type": "Armor",
      "subtype": "Leather",
      "quality": "Common"
    }
  }
}
```

#### 3. 集成测试
```bash
npm run test-html-tools
```

**测试覆盖:**
- ✅ 下载器功能测试（任务 + 物品）
- ✅ 分析器功能测试（解析 + 验证）
- ✅ 品质识别准确性测试（100%通过率）
- ✅ 端到端工作流程测试

### 数据转换工具

**基本用法:**
```bash
npm run convert
```

**功能:**
- 使用WoW标准ItemType分类系统
- 智能复用现有pfQuest物品名称
- 生成紧凑的数字数组格式

**输出文件:**
- `pfQuest/db/quest-rewards.lua` - 任务奖励映射
- `pfQuest/db/item-props.lua` - 物品属性数据

## 🎯 NPM 脚本

| 脚本 | 命令 | 描述 |
|------|------|------|
| `npm start` | 数据合并 | 生成任务ID列表 |
| `npm run download-html` ⭐ | HTML下载 | 完整模式：下载任务和物品页面 |
| `npm run download-items-only` ⭐ | 物品下载 | 仅下载物品：从quest-rewards-selenium.json直接下载物品页面 |
| `npm run analyze-html` ⭐ | 数据分析 | 本地HTML解析 |
| `npm run test-html-tools` ⭐ | 集成测试 | 验证工具链完整性 |
| `npm run convert` | 数据转换 | JSON转Lua格式 |
| `npm run scrape-all-headless` | 传统抓取 | 生产环境大规模批量处理（备用） |

## 📊 性能优势

### HTML工具链 vs 传统方式

| 特性 | 传统Selenium | HTML工具链 ⭐ |
|------|-------------|-----------|
| 开发调试 | 每次5-10秒网络请求 | 首次下载后毫秒级 |
| 数据验证 | 需重新抓取 | 离线快速验证 |
| 代码调试 | 频繁网络请求 | 纯本地，极速迭代 |
| 断点续传 | 任务级别 | 页面级别，更精确 |
| 调试效率 | 基线 | **快100-1000倍** |
| 适用场景 | 生产环境批量处理 | **开发环境调试分析** |

### 性能数据
- **HTML下载**: 5-8秒/任务（一次性）
- **数据分析**: 毫秒级（可重复执行）
- **断点续传**: 页面级精确控制
- **内存使用**: 下载时~150MB，分析时~50MB

## 🔧 系统要求

- **Node.js** 12.0+ 
- **Chrome浏览器** (HTML下载器需要)
- **4GB+ RAM** (推荐)

## 🆘 常见问题

**Q: 推荐使用哪个工具？**
A: 开发调试使用HTML工具链，生产环境大批量处理可考虑Selenium工具

**Q: 断点续传如何工作？**
A: 自动检测已下载的文件，跳过已完成项目，支持安全中断和恢复

**Q: Cloudflare检测怎么办？**
A: HTML下载器内置绕过机制，自动配置浏览器参数避免检测

**Q: 如何提高开发效率？**
A: 使用HTML工具链：一次下载，多次分析，避免重复网络请求

**Q: 数据准确性如何？**
A: 品质识别准确率100%，使用严格的正则表达式验证

## 🔄 推荐工作流程

### 开发调试（推荐）
```bash
npm install                 # 安装依赖
npm start                  # 生成任务ID（可选）
npm run download-items-only # 仅下载物品页面（推荐）
npm run analyze-html       # 快速数据分析
npm run convert            # 转换为Lua
```

### 首次完整下载
```bash
npm install              # 安装依赖
npm start               # 生成任务ID
npm run download-html   # 完整下载任务和物品
npm run analyze-html    # 数据分析
npm run convert         # 转换为Lua
```

### 生产环境
```bash
npm run scrape-all-headless  # 大规模批量处理
npm run convert             # 转换数据
```

## 📁 输出文件

```
output/
├── valid-quest-ids.json           # 有效任务ID列表
├── quest-rewards-data.json        # 分析后的奖励数据  
└── html-download-progress.json    # 下载进度文件

cache/
├── quests/                         # 任务页面缓存
│   ├── 2.html
│   └── ...
└── items/                          # 物品页面缓存
    ├── 21348.html
    └── ...

pfQuest/db/
├── quest-rewards.lua              # 任务奖励数据
└── item-props.lua                 # 物品属性数据
```

---

🎉 **开始使用HTML工具链，体验现代化的数据处理效率！**