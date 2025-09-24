# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 项目概述

这是一个魔兽世界乌龟服(TurtleWoW)的任务助手插件，基于经典版本(1.12)。项目包含两个主要组件：

- `pfQuest/` - 核心任务插件，提供任务数据库、地图显示、任务跟踪等功能
- `pfQuest-turtle/` - 乌龟服专属扩展数据库，包含乌龟服自定义内容

## 项目架构

### 核心模块结构
- `config.lua` - 配置管理和重置功能
- `database.lua` - 数据库核心逻辑，包含集群算法和数据合并
- `map.lua` - 地图显示和坐标处理
- `quest.lua` - 任务逻辑处理
- `tracker.lua` - 任务跟踪界面
- `browser.lua` - 任务浏览器
- `route.lua` - 路线规划
- `slashcmd.lua` - 斜杠命令处理

### 数据库组织
数据存储在 `db/` 目录下，按类型分类：
- `quests.lua` / `quests-turtle.lua` - 任务数据
- `units.lua` / `units-turtle.lua` - NPC数据
- `objects.lua` / `objects-turtle.lua` - 游戏对象数据
- `items.lua` / `items-turtle.lua` - 物品数据
- `zones.lua` / `zones-turtle.lua` - 区域数据
- `professions.lua` / `professions-turtle.lua` - 专业技能数据

支持多语言：`enUS/` 和 `zhCN/` 子目录包含本地化数据

### 数据合并机制
`pfQuest-turtle/patchtable.lua` 负责将乌龟服数据合并到基础数据库中：
- 使用 `patchtable()` 函数递归合并数据表
- 支持删除操作（值为 "_" 时删除对应项）
- 自动处理多语言数据合并

## 开发工具

### 数据提取器
`pfQuest/toolbox/extractor.lua` - Lua脚本，用于从服务器数据库提取游戏数据：
- 依赖 luasql 库
- 支持从 MaNGOS/CMaNGOS 数据库提取数据
- 生成各种类型的数据文件（任务、NPC、物品等）

### 地图资源
`pfQuest/toolbox/maps/` - 包含各区域的地图PNG文件，用于小地图显示
`pfQuest-turtle/toolbox/maps/turtle/` - 乌龟服专属地图文件

## 插件加载顺序

通过 .toc 文件定义的XML加载顺序：
1. `init/data.xml` - 基础数据库初始化
2. `init/enUS.xml` / `init/zhCN.xml` - 语言数据
3. `init/addon.xml` - 核心功能模块

## 自定义和扩展

### 数据覆盖
- `pfQuest/overwrites.lua` - 手动覆盖基础数据库中的条目
- `pfQuest-turtle/overwrites.lua` - 乌龟服专属数据修正

### 服务器集成
- 支持通过聊天命令 `.queststatus` 从服务器同步任务状态
- 自动检测新任务并清理缓存

## 重要常量和配置

- Interface版本：11200 (对应WoW 1.12)
- 数据库URL：https://database.turtle-wow.org/?quest=
- 支持种族扩展：哥布林(256)、血精灵(512)
- 自动禁用副本小地图（除战场外）

## 开发注意事项

- 所有Lua文件使用UTF-8编码
- 数据库文件为自动生成，手动修改应在 overwrites.lua 中进行
- 支持pfUI界面框架集成
- 图片资源使用TGA格式，支持透明度
- 永远不要直接读取 db 目录下的文件, 它们都很大, 你应该通过使用这些文件的代码来了解它们的格式, 而不是读取数据来了解.