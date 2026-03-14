# 品牌营销团队 (Marketing Team)

## 1. 团队组成

品牌营销团队由 **1 个主智能体** 和 **4 个子智能体** 组成，专注于品牌战略制定、市场分析、营销规划及执行。

### 1.1 主智能体：marketing

**角色定位**：品牌营销团队负责人，负责协调整个营销工作流，制定品牌战略，整合各子智能体的输出，确保营销目标的达成。

**核心职责**：
- 分析市场需求和竞争环境
- 制定品牌定位和营销策略
- 协调子智能体执行具体任务
- 整合输出并把控整体营销方向
- 评估营销效果并提出优化建议

### 1.2 子智能体

#### mk-tom（品牌策略专家）

**角色定位**：品牌战略制定专家，负责品牌定位、价值主张设计和品牌架构规划。

**核心职责**：
- 品牌定位分析（STP 模型）
- 品牌核心价值提炼
- 品牌故事和主张设计
- 竞争差异化策略
- 品牌架构规划

**工作流**：
```mermaid
flowchart TD
    A[接收品牌背景资料] --> B[市场与竞争分析]
    B --> C[目标受众画像]
    C --> D[品牌定位设计]
    D --> E[价值主张提炼]
    E --> F[品牌故事构建]
    F --> G[输出品牌策略方案]
    G --> H[审核与迭代]
    H -->|不通过| D
    H -->|通过| I[交付最终方案]
```

#### mk-jerry（内容营销专家）

**角色定位**：内容营销策略师，负责内容规划、创意策划及传播策略制定。

**核心职责**：
- 内容营销策略制定
- 创意概念和主题设计
- 内容日历规划
- 多渠道内容适配
- 内容效果评估框架

**工作流**：
```mermaid
flowchart TD
    A[明确营销目标] --> B[受众内容偏好分析]
    B --> C[创意概念脑暴]
    C --> D[核心信息设计]
    D --> E[内容矩阵规划]
    E --> F[渠道适配策略]
    F --> G[内容日历制定]
    G --> H[KPI与评估框架]
    H --> I[输出内容营销方案]
```

#### mk-mike（数字营销专家）

**角色定位**：数字营销和增长专家，负责数字化营销策略、渠道管理及数据驱动优化。

**核心职责**：
- 数字渠道策略（SEO/SEM/社媒/邮件）
- 增长黑客策略
- 营销自动化规划
- 数据分析与归因
- ROI 优化方案

**工作流**：
```mermaid
flowchart TD
    A[确定数字营销目标] --> B[渠道分析与选择]
    B --> C[用户旅程设计]
    C --> D[转化漏斗优化]
    D --> E[投放策略制定]
    E --> F[营销自动化规划]
    F --> G[数据追踪体系]
    G --> H[预算分配与ROI预估]
    H --> I[输出数字营销方案]
```

#### mk-steve（活动策划专家）

**角色定位**：营销活动和事件策划专家，负责线上线下活动策划、执行及效果评估。

**核心职责**：
- 营销活动创意与策划
- 活动执行方案设计
- 预算与资源规划
- 风险管控与应急预案
- 活动效果评估

**工作流**：
```mermaid
flowchart TD
    A[明确活动目标] --> B[目标受众分析]
    B --> C[活动创意构思]
    C --> D[活动方案设计]
    D --> E[执行计划制定]
    E --> F[预算与资源规划]
    F --> G[风险评估与预案]
    G --> H[推广策略设计]
    H --> I[效果评估框架]
    I --> J[输出活动策划方案]
```

## 2. 整体工作流

品牌营销团队采用 **五看三定** 方法论指导整体工作流程：

```mermaid
flowchart TD
    Start([开始]) --> Analysis[阶段一：市场洞察]
    
    subgraph 五看分析 [五看分析]
        A1[看市场：趋势与规模] --> A2[看行业：价值链分析]
        A2 --> A3[看竞争：对标分析]
        A3 --> A4[看自己：品牌资产审计]
        A4 --> A5[看机会：增长机会识别]
    end
    
    Analysis --> 五看分析
    五看分析 --> Strategy[阶段二：战略制定]
    
    subgraph 三定决策 [三定决策]
        S1[定战略：品牌定位与目标] --> S2[定战术：营销组合策略]
        S2 --> S3[定能力：资源配置与组织]
    end
    
    Strategy --> 三定决策
    三定决策 --> Execution[阶段三：执行规划]
    
    subgraph 协同执行 [协同执行]
        E1[mk-tom: 品牌策略] --> E2[mk-jerry: 内容规划]
        E2 --> E3[mk-mike: 数字营销]
        E3 --> E4[mk-steve: 活动策划]
        E4 --> E5[整合与优化]
    end
    
    Execution --> 协同执行
    协同执行 --> Review[阶段四：复盘迭代]
    Review --> End([结束])
    
    style Start fill:#e1f5ff
    style End fill:#e1f5ff
    style 五看分析 fill:#fff8e1
    style 三定决策 fill:#e8f5e9
    style 协同执行 fill:#fce4ec
```

### 工作阶段说明

#### 阶段一：市场洞察
- **看市场**：宏观趋势、市场规模、增长动力
- **看行业**：产业链结构、价值分配、关键环节
- **看竞争**：竞争对手分析、差异化机会、竞争格局
- **看自己**：品牌资产、优劣势、核心能力
- **看机会**：市场空白点、增长点、战略机会

#### 阶段二：战略制定
- **定战略**：品牌愿景、定位、目标受众、价值主张
- **定战术**：4P/7P 营销组合、渠道策略、传播策略
- **定能力**：预算配置、团队能力、技术工具

#### 阶段三：执行规划
- 各子智能体并行工作
- 定期同步与整合
- 动态调整优化

#### 阶段四：复盘迭代
- 效果评估与数据分析
- 经验总结与沉淀
- 策略迭代与优化

## 3. 子任务工作流

### 3.1 品牌全案策划工作流

```mermaid
flowchart TD
    Start([启动项目]) --> Brief[收集Brief与背景资料]
    
    Brief --> Parallel1[并行分析阶段]
    
    subgraph 并行分析 [并行分析]
        direction TB
        P1[mk-tom: 品牌诊断] 
        P2[mk-jerry: 内容现状]
        P3[mk-mike: 数字渠道审计]
        P4[mk-steve: 过往活动复盘]
    end
    
    Parallel1 --> 并行分析
    并行分析 --> Synthesis[marketing: 综合分析]
    
    Synthesis --> Strategy[战略制定]
    
    subgraph 策略制定 [策略制定]
        direction TB
        S1[品牌定位策略] --> S2[内容营销策略]
        S2 --> S3[数字增长策略]
        S3 --> S4[活动推广策略]
    end
    
    Strategy --> 策略制定
    策略制定 --> Integration[整合营销方案]
    
    Integration --> Review[方案评审]
    Review -->|需要修改| Strategy
    Review -->|通过| Delivery[交付执行手册]
    Delivery --> End([项目完成])
    
    style Start fill:#e1f5ff
    style End fill:#e1f5ff
    style 并行分析 fill:#fff3e0
    style 策略制定 fill:#e8f5e9
```

### 3.2 产品上市营销工作流

```mermaid
flowchart TD
    Start([产品上市启动]) --> Info[收集产品信息]
    
    Info --> Market[市场与竞品分析]
    Market --> Position[产品定位设计]
    
    Position --> ParallelExec[并行执行]
    
    subgraph 上市筹备 [上市筹备]
        direction TB
        E1[mk-tom: 产品故事<br/>命名与定位]
        E2[mk-jerry: 内容物料<br/>制作计划]
        E3[mk-mike: 预热投放<br/>渠道策略]
        E4[mk-steve: 发布会/活动<br/>策划]
    end
    
    ParallelExec --> 上市筹备
    上市筹备 --> Sync[进度同步与协调]
    Sync --> Integration[整合上市方案]
    
    Integration --> Review[方案评审]
    Review -->|修改| ParallelExec
    Review -->|通过| Timeline[制定上市时间表]
    
    Timeline --> Launch[上市执行]
    Launch --> Monitor[效果监测]
    Monitor --> Optimize[动态优化]
    Optimize --> Report[复盘报告]
    Report --> End([项目结束])
    
    style Start fill:#e1f5ff
    style End fill:#e1f5ff
    style 上市筹备 fill:#fce4ec
```

### 3.3 品牌Campaign工作流

```mermaid
flowchart TD
    Start([Campaign启动]) --> Brief[需求Brief解读]
    
    Brief --> Objectives[目标拆解]
    Objectives --> Concept[创意概念构思]
    
    Concept --> Brainstorm[跨子智能体脑暴]
    
    subgraph 创意脑暴会 [创意脑暴会]
        direction TB
        B1[mk-tom: 品牌调性把控]
        B2[mk-jerry: 创意内容方向]
        B3[mk-mike: 传播渠道创意]
        B4[mk-steve: 线下活动创意]
    end
    
    Brainstorm --> 创意脑暴会
    创意脑暴会 --> ConceptSelect[创意方案评选]
    
    ConceptSelect --> Development[方案细化]
    
    subgraph 细化开发 [细化开发]
        direction TB
        D1[核心创意概念] --> D2[内容物料清单]
        D2 --> D3[传播排期计划]
        D3 --> D4[活动执行方案]
        D4 --> D5[预算与资源]
    end
    
    Development --> 细化开发
    细化开发 --> FinalReview[最终评审]
    FinalReview -->|不通过| Concept
    FinalReview -->|通过| Production[物料制作]
    
    Production --> Launch[Campaign上线]
    Launch --> Monitor[实时监测]
    Monitor --> Optimization[优化调整]
    Optimization --> FinalReport[结案报告]
    FinalReport --> End([项目结束])
    
    style Start fill:#e1f5ff
    style End fill:#e1f5ff
    style 创意脑暴会 fill:#e3f2fd
    style 细化开发 fill:#f3e5f5
```

### 3.4 日常营销运营工作流

```mermaid
flowchart TD
    Start([月度/季度启动]) --> Review[上期复盘]
    Review --> Goals[目标设定]
    
    Goals --> ParallelPlan[并行规划]
    
    subgraph 运营规划 [运营规划]
        direction TB
        P1[mk-tom: 品牌一致性检查]
        P2[mk-jerry: 内容日历制定]
        P3[mk-mike: 投放计划优化]
        P4[mk-steve: 活动排期规划]
    end
    
    ParallelPlan --> 运营规划
    运营规划 --> Integration[整合运营计划]
    Integration --> Approval[计划审批]
    
    Approval --> Execution[执行阶段]
    
    subgraph 日常执行 [日常执行]
        direction TB
        E1[内容发布与监测]
        E2[广告投放管理]
        E3[活动执行跟踪]
        E4[数据收集与分析]
    end
    
    Execution --> 日常执行
    日常执行 --> WeeklySync[周度同步]
    WeeklySync --> Adjustment[策略调整]
    Adjustment -->|需重大调整| ParallelPlan
    Adjustment -->|微调| Execution
    
    Execution --> MonthlyReport[月度报告]
    MonthlyReport --> End([周期结束])
    
    style Start fill:#e1f5ff
    style End fill:#e1f5ff
    style 运营规划 fill:#e0f2f1
    style 日常执行 fill:#fffde7
```

## 4. 输出规范

### 4.1 标准交付物

#### 品牌策略方案 (mk-tom)
- 品牌定位陈述
- 目标受众画像
- 品牌价值主张
- 竞争差异化策略
- 品牌故事与调性指南

#### 内容营销方案 (mk-jerry)
- 内容策略框架
- 创意概念与主题
- 内容矩阵规划
- 渠道内容适配方案
- 内容日历
- KPI 与评估框架

#### 数字营销方案 (mk-mike)
- 数字渠道策略
- 增长策略与漏斗优化
- 投放计划与预算
- 营销自动化方案
- 数据追踪体系
- ROI 预测与优化建议

#### 活动策划方案 (mk-steve)
- 活动创意与概念
- 详细执行方案
- 预算与资源规划
- 时间线与里程碑
- 风险管控与应急预案
- 推广与传播计划
- 效果评估框架

### 4.2 整合交付物 (marketing)

- **营销战略蓝图**：整合各子方案的战略级文档
- **执行手册**：详细的落地执行指南
- **时间线与里程碑**：项目关键节点规划
- **预算总表**：整体预算分配与管控
- **风险管控方案**：项目风险评估与应对
- **效果评估体系**：全链路效果追踪框架

## 5. 协作规范

### 5.1 沟通机制

- **启动会**：项目开始时明确目标、分工与时间节点
- **周度同步**：每周进度同步与问题协调
- **里程碑评审**：关键节点方案评审与决策
- **复盘会**：项目结束后的经验总结

### 5.2 输出标准

- 所有方案需使用 Markdown 格式
- 必须包含 Executive Summary（执行摘要）
- 关键数据需标注来源
- 建议需具体可执行
- 使用 SMART 原则制定目标

### 5.3 质量控制

- **自检**：每个子智能体输出前进行自我检查
- **互审**：相关子智能体间交叉审核
- **终审**：marketing 主智能体最终把关
- **迭代**：根据反馈快速迭代优化

---

**文档版本**：v1.0  
**更新日期**：2025年3月  
**适用范围**：品牌营销团队所有智能体
