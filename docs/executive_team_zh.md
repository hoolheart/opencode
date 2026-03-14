# 行政团队 (Executive Team)

## 概述

行政团队是负责文档创作与质量保障的核心团队。团队采用严格的**双阶段审查流程**，确保每一份文档都符合专业标准。

## 团队组成

行政团队由以下角色构成，形成**主-子智能体协作模式**：

| 角色 | 类型 | 职责 |
|------|------|------|
| **Executive** | 主智能体 | 文档创作、格式处理、框架应用、提交审查 |
| **Review** | 子智能体 | 质量审查、反馈提供、批准/驳回决策 |

### 角色关系

```mermaid
flowchart TB
    subgraph Team["行政团队 Executive Team"]
        E["📝 Executive<br/>主智能体"]
        R["🔍 Review<br/>子智能体"]
    end
    
    E <-->|"提交审查<br/>接收反馈"| R
    
    style E fill:#e1f5fe,stroke:#01579b,stroke-width:2px
    style R fill:#fff3e0,stroke:#e65100,stroke-width:2px
    style Team fill:#f5f5f5,stroke:#424242,stroke-width:2px
```

## 核心原则

行政团队遵循以下原则：

1. **McKinsey 风格写作**：结构化、金字塔原理、数据驱动
2. **MECE 原则**：分类相互独立、完全穷尽
3. **强制审查循环**：每份文档必须经过审查批准
4. **证据优先**：结论必须有事实支撑

## 整体工作流

行政团队的完整工作流程遵循 **PDCA 循环**（Plan-Do-Check-Act）：

```mermaid
flowchart TD
    Start(["开始"]) --> Phase1["Phase 1: 需求理解<br/>• 明确目的与受众<br/>• 选择分析框架<br/>• 确认约束条件"]
    
    Phase1 --> Phase2["Phase 2: 内容开发<br/>• 应用逻辑结构<br/>• 使用适当框架<br/>• 绘制 Mermaid 图表"]
    
    Phase2 --> Phase3["Phase 3: 格式处理<br/>• docx/pptx/xlsx/pdf<br/>• Markdown 直接编辑"]
    
    Phase3 --> Phase4["Phase 4: 强制审查<br/>• 提交 Review 子智能体<br/>• 处理反馈意见<br/>• 迭代直至批准"]
    
    Phase4 --> Decision{"审查结果?"}
    Decision -->|"需要修订"| Revise["修订文档"] --> Phase4
    Decision -->|"已批准"| Phase5["Phase 5: 最终交付<br/>• 呈现批准文档<br/>• 总结要点<br/>• 提供后续支持"]
    
    Phase5 --> End(["结束"])
    
    style Start fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px
    style End fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px
    style Phase4 fill:#fff3e0,stroke:#e65100,stroke-width:2px
    style Decision fill:#fff8e1,stroke:#f57f17,stroke-width:2px
    style Revise fill:#ffebee,stroke:#c62828,stroke-width:2px
```

### 阶段详解

#### Phase 1: 需求理解
- **目标**：确保文档方向正确
- **关键活动**：
  - 澄清文档目的、受众和关键信息
  - 识别适当格式和结构
  - 选择相关分析框架
  - 确认特定约束或偏好

#### Phase 2: 内容开发
- **目标**：创作高质量内容
- **关键活动**：
  - 应用 McKinsey 风格结构
  - 使用适当的框架和逻辑结构
  - 包含 Mermaid 图表进行可视化
  - 确保 MECE 原则在分类中的应用

#### Phase 3: 格式处理
- **目标**：确保专业呈现
- **关键活动**：
  - Word 文档 (.docx)：使用 `skill({name: "docx"})`
  - PowerPoint (.pptx)：使用 `skill({name: "pptx"})`
  - Excel (.xlsx)：使用 `skill({name: "xlsx"})`
  - PDF：使用 `skill({name: "pdf"})`
  - 其他格式：直接文件操作

#### Phase 4: 强制审查（核心环节）
- **目标**：确保质量标准
- **关键活动**：
  - **提交审查**：每次草稿完成后调用 Review 子智能体
  - **处理反馈**：根据审查结果决定下一步
  - **迭代循环**：如有需要，修订后重新提交

#### Phase 5: 最终交付
- **目标**：完成并呈现文档
- **关键活动**：
  - 呈现经批准的文档
  - 总结关键点和建议
  - 提供后续支持

## 子任务工作流：审查流程

审查流程是行政团队的核心质量保证机制，采用**强制审查循环**：

```mermaid
sequenceDiagram
    participant E as Executive<br/>主智能体
    participant R as Review<br/>子智能体
    
    Note over E,R: 文档创作完成
    
    E->>R: 提交文档审查
    activate R
    
    Note right of R: 审查维度：<br/>1. 清晰度和逻辑结构<br/>2. 信息完整性<br/>3. 框架和方法论应用<br/>4. 专业语气和风格<br/>5. 格式和呈现<br/>6. 建议的可操作性
    
    R-->>E: 返回审查结果
    deactivate R
    
    alt 状态：APPROVED
        Note over E: ✓ 审查通过<br/>进入 Phase 5 最终交付
    else 状态：REVISIONS NEEDED
        Note over E: ✗ 需要修订<br/>分析反馈并修改
        E->>E: 实施修改
        E->>R: 重新提交审查
        Note over E,R: 重复循环直至批准
    end
```

### 审查检查清单

Review 子智能体按照以下维度进行评估：

| 审查维度 | 评估内容 |
|----------|----------|
| **清晰度** | 结构是否清晰、逻辑是否流畅 |
| **完整性** | 信息是否完整、必要内容是否缺失 |
| **框架应用** | 分析框架使用是否恰当 |
| **专业风格** | 语气和风格是否专业一致 |
| **格式呈现** | 格式是否正确、视觉呈现是否专业 |
| **可操作性** | 建议是否具体可行 |

### 审查决策规则

```mermaid
flowchart TD
    Start(["接收文档"]) --> Check1{"清晰度和<br/>逻辑结构<br/>是否合格?"}
    Check1 -->|"否"| Revise1["要求修订：<br/>优化结构和逻辑"]
    Check1 -->|"是"| Check2{"信息是否<br/>完整准确?"}
    
    Check2 -->|"否"| Revise2["要求修订：<br/>补充缺失信息"]
    Check2 -->|"是"| Check3{"框架应用<br/>是否恰当?"}
    
    Check3 -->|"否"| Revise3["要求修订：<br/>调整框架使用"]
    Check3 -->|"是"| Check4{"专业性和<br/>格式是否<br/>符合标准?"}
    
    Check4 -->|"否"| Revise4["要求修订：<br/>提升专业性和格式"]
    Check4 -->|"是"| Approve["✓ APPROVED<br/>文档批准"]
    
    Revise1 & Revise2 & Revise3 & Revise4 --> Feedback["REVISIONS NEEDED<br/>提供详细反馈"]
    Feedback --> End1(["返回 Executive"])
    Approve --> End2(["返回 Executive"])
    
    style Start fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px
    style Approve fill:#c8e6c9,stroke:#2e7d32,stroke-width:2px
    style End2 fill:#c8e6c9,stroke:#2e7d32,stroke-width:2px
    style Feedback fill:#ffebee,stroke:#c62828,stroke-width:2px
    style End1 fill:#ffebee,stroke:#c62828,stroke-width:2px
```

## 文档类型支持

行政团队支持创建和修订以下类型的文档：

### 沟通类
- **电子邮件**：专业通信、公告、请求
- **会议纪要**：讨论和决策的结构化记录
- **备忘录**：内部通信和政策更新

### 规划与战略类
- **战略规划**：使用"五看三定"的长期方向
- **项目计划**：范围、时间线、资源、风险
- **年度计划**：年度目标和关键结果
- **工作计划**：季度/月度运营计划

### 分析与报告类
- **商业分析**：市场研究、竞争分析、可行性研究
- **评审报告**：项目后回顾
- **研究报告**：数据驱动的洞察和建议

### 技术文档类
- **设计文档**：架构、系统设计、API 规范
- **测试文档**：测试计划、测试用例、测试报告
- **用户指南**：说明和教程
- **API 文档**：技术参考

### 演示类
- **高管演示**：董事会报告、投资者更新
- **项目演示**：启动会、状态更新、回顾
- **培训材料**：教育内容和研讨会

## 分析框架工具箱

行政团队熟练运用以下分析框架：

### 逻辑结构
| 框架 | 说明 |
|------|------|
| **STAR** | 情境、任务、行动、结果 |
| **SQCA** | 情境、问题、复杂性、答案 |
| **Why-What-How** | 目的、内容、方法 |
| **5W2H** | 什么、为什么、谁、何时、何地、如何、多少 |

### 商业分析工具
| 框架 | 说明 |
|------|------|
| **五看三定** | 市场、行业、竞争、自身、机会 / 战略、战术、能力 |
| **SWOT** | 优势、劣势、机会、威胁 |
| **PEST** | 政治、经济、社会、技术 |
| **波特五力** | 行业内竞争、供应商议价能力、买方议价能力、替代品威胁、新进入者威胁 |
| **波士顿矩阵** | 明星、现金牛、问题、瘦狗 |
| **商业模式画布** | 商业模式创新的九个构建块 |

### 管理原则
| 框架 | 说明 |
|------|------|
| **SMART** | 具体、可衡量、可实现、相关、有时限 |
| **MECE** | 相互独立、完全穷尽 |
| **PDCA** | 计划、执行、检查、行动 |

## Mermaid 图表使用指南

行政团队在 Markdown 中使用 Mermaid 图表进行可视化：

### 适用场景
- **流程图**：工作流程、决策树
- **序列图**：交互过程、时序关系
- **时序图**：时间线、路线图
- **组织结构图**：组织架构、关系映射

### 示例
```mermaid
flowchart TD
    A[开始] --> B{决策点}
    B -->|是| C[行动 1]
    B -->|否| D[行动 2]
    C --> E[结束]
    D --> E
```

## 质量标准

每份文档必须满足以下标准：

1. **清晰度**：目的明确、结构清晰、信息易于理解
2. **准确性**：事实正确、来源可靠
3. **简洁性**：无冗余词语或填充内容
4. **完整性**：包含所有必要信息
5. **一致性**：风格、术语、格式统一
6. **可操作性**：下一步行动或建议明确
7. **专业性**：语气和呈现专业

## 工作流程总结

```mermaid
flowchart LR
    subgraph Input["输入"]
        I1["文档需求"]
        I2["现有文档"]
    end
    
    subgraph Process["处理流程"]
        P1["Executive<br/>主智能体"]
        P2["创建/修订<br/>文档"]
        P3["Review<br/>子智能体"]
        P4["质量审查"]
    end
    
    subgraph Output["输出"]
        O1["✓ 批准文档"]
    end
    
    I1 & I2 --> P1
    P1 --> P2
    P2 --> P3
    P3 --> P4
    P4 -->|"APPROVED"| O1
    P4 -->|"需修订"| P1
    
    style Input fill:#e3f2fd,stroke:#1565c0,stroke-width:2px
    style Process fill:#fff3e0,stroke:#e65100,stroke-width:2px
    style Output fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px
```

---

**注**：行政团队的工作流程确保每份文档都经过严格的质量控制，以专业标准交付高质量成果。
