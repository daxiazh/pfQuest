# pfQuest 数据合并工具

这是一个用 JavaScript 实现的 pfQuest 任务数据合并工具，模拟了插件中 `patchtable.lua` 的功能，能够合并基础任务数据和乌龟服自定义数据，并生成有效任务ID的JSON文件。

## 功能特性

- 🔍 **Lua 文件解析**: 解析 pfQuest 的 Lua 数据文件格式
- 🔄 **数据合并**: 模拟 `patchtable()` 函数逻辑，支持覆盖、新增、删除操作
- 📊 **统计分析**: 生成详细的合并统计信息
- 📁 **多格式导出**: 支持不同详细程度的 JSON 输出
- ✅ **测试验证**: 包含完整的测试套件

## 项目结构

```
Tools/
├── index.js          # 主程序入口
├── lua-parser.js     # Lua 文件解析器
├── quest-merger.js   # 任务数据合并器
├── test.js          # 测试套件
├── package.json     # 项目配置
├── README.md        # 使用说明
└── output/          # 输出目录（运行后创建）
    ├── valid-quest-ids.json      # 有效任务ID列表
    ├── quest-data-detailed.json  # 详细任务信息
    └── merged-quest-data.json    # 完整合并数据
```

## 安装使用

### 1. 环境要求
- Node.js 12.0 或更高版本

### 2. 安装依赖
```bash
cd Tools
npm install
```

### 3. 运行工具
```bash
# 基础合并和导出
npm start
# 或
node index.js

# 包含完整数据的导出
node index.js --full

# 查看帮助
node index.js --help
```

### 4. 运行测试
```bash
npm test
# 或
node test.js
```

## 输出文件说明

### 1. valid-quest-ids.json
最基础的输出文件，包含：
```json
{
  "timestamp": "2024-01-01T00:00:00.000Z",
  "validQuestIds": [1, 2, 3, ...],
  "stats": {
    "baseCount": 1234,
    "turtleCount": 567,
    "validCount": 1678,
    "deletedCount": 23,
    "addedCount": 544
  }
}
```

### 2. quest-data-detailed.json
包含每个任务的详细信息：
```json
{
  "timestamp": "2024-01-01T00:00:00.000Z",
  "validQuestIds": [1, 2, 3, ...],
  "stats": { ... },
  "questInfo": {
    "1": {
      "level": 10,
      "minLevel": 5,
      "race": 255,
      "hasStart": true,
      "hasEnd": true,
      "hasObjectives": false,
      "hasPrerequisites": false,
      "source": "base"
    }
  }
}
```

### 3. merged-quest-data.json (使用 --full 选项)
包含完整的合并后任务数据，数据量较大。

## 工作原理

### 1. 数据解析
`LuaParser` 类负责解析 pfQuest 的 Lua 数据文件：
- 移除注释
- 解析 `pfDB[category][subcategory] = { ... }` 格式
- 处理嵌套对象和数组
- 转换数据类型

### 2. 数据合并
`QuestDataMerger` 类模拟 `patchtable()` 函数逻辑：
```javascript
// 模拟 patchtable 函数
applyPatch(base, diff) {
  for (const [key, value] of Object.entries(diff)) {
    if (typeof value === 'string' && value === '_') {
      delete base[key];  // 删除操作
    } else {
      base[key] = value; // 覆盖/新增操作
    }
  }
}
```

### 3. 合并流程
1. 加载基础任务数据 (`pfQuest/db/quests.lua`)
2. 加载乌龟服数据 (`pfQuest-turtle/db/quests-turtle.lua`)
3. 执行数据合并（应用补丁）
4. 生成统计信息
5. 导出结果文件

## 支持的操作类型

### 1. 覆盖操作
```lua
-- 基础数据
[100] = { ["lvl"] = 10, ["min"] = 5 }

-- 乌龟服数据
[100] = { ["lvl"] = 15, ["race"] = 255 }

-- 合并结果
[100] = { ["lvl"] = 15, ["race"] = 255 }  -- 完全覆盖
```

### 2. 新增操作
```lua
-- 乌龟服数据中的新任务ID
[50001] = { ["lvl"] = 60, ["min"] = 58 }

-- 会被直接添加到合并结果中
```

### 3. 删除操作
```lua
-- 乌龟服数据
[123] = "_"

-- 该任务会从合并结果中完全删除
```

## 测试功能

测试套件包括：
- Lua 解析器功能测试
- 数据合并逻辑测试
- 删除操作特殊测试
- 文件导出功能测试

运行测试查看详细的功能验证结果。

## 注意事项

1. **文件路径**: 工具假设从 `Tools/` 目录运行，自动定位项目根目录
2. **数据完整性**: 合并操作是覆盖式的，乌龟服数据会完全替换基础数据中的同名字段
3. **内存使用**: 完整数据导出会占用较多内存，建议仅在需要时使用 `--full` 选项
4. **错误处理**: 如果源文件不存在或格式错误，工具会给出相应警告并继续处理

## 扩展开发

如需扩展功能，可以：
1. 在 `LuaParser` 中添加更复杂的 Lua 语法支持
2. 在 `QuestDataMerger` 中实现其他数据库类型的合并
3. 添加更多输出格式或过滤条件
4. 集成到 CI/CD 流程中自动处理数据更新

## 示例输出

```bash
$ node index.js

pfQuest 数据合并工具
==================================================
项目根目录: /Users/user/pfQuest

开始合并任务数据...
加载基础任务数据: /Users/user/pfQuest/pfQuest/db/quests.lua
成功加载 2847 个基础任务
加载乌龟服任务数据: /Users/user/pfQuest/pfQuest-turtle/db/quests-turtle.lua
成功加载 245 个乌龟服任务数据项
执行数据合并...
任务数据合并完成！
基础任务数量: 2847
乌龟服任务数量: 245
合并后有效任务数量: 2921
删除的任务数量: 15

合并结果摘要:
------------------------------
✅ 有效任务总数: 2921
📊 基础任务数量: 2847
🐢 乌龟服数据项: 245
➕ 新增任务数量: 230
🗑️  删除任务数量: 15

✅ 任务数据合并完成！
```