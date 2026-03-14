# 深度调研团队 (Research Team)

## 1. 团队组成

深度调研团队是一个专门负责执行复杂、多维度调研任务的智能体协作系统。团队采用"1主4子"的架构设计，通过任务分解与并行执行，实现高效、全面的研究分析。

### 1.1 组织架构

```mermaid
flowchart TB
    subgraph "Research Team"
        R[主智能体<br/>Research<br/>调研调度中心]
        
        subgraph "Sub-Agents 子智能体"
            SI[rs-inspect<br/>研究检查员]
            SS[rs-search<br/>研究搜索员]
            SE[rs-examine<br/>研究审查员]
            C[creative<br/>创意分析师]
        end
    end
    
    R --> SI
    R --> SS
    R --> SE
    R --> C
    
    SI -.->|反馈| R
    SS -.->|反馈| R
    SE -.->|反馈| R
    C -.->|反馈| R
```

### 1.2 角色职责

| 角色 | 类型 | 核心职责 | 专长领域 |
|------|------|----------|----------|
| **Research** | 主智能体 | 任务调度、结果整合、质量控制、最终输出 | 统筹协调、复杂任务分解 |
| **rs-inspect** | 子智能体 | 信息收集与初步分析 | 数据采集、信息检索、初步筛选 |
| **rs-search** | 子智能体 | 深度搜索与多源验证 | 多维度搜索、交叉验证、溯源追踪 |
| **rs-examine** | 子智能体 | 内容审查与逻辑验证 | 逻辑分析、质量审查、矛盾识别 |
| **creative** | 子智能体 | 创新视角与洞察生成 | 模式识别、创新思考、趋势预测 |

---

## 2. 整体工作流

### 2.1 主流程图

```mermaid
flowchart TD
    Start([开始调研任务]) --> Input[接收调研需求]
    Input --> Decompose[Research: 任务分解]
    Decompose --> Parallel[并行分配子任务]
    
    Parallel --> Task1[rs-inspect: 基础信息收集]
    Parallel --> Task2[rs-search: 深度搜索验证]
    Parallel --> Task3[rs-examine: 逻辑审查]
    Parallel --> Task4[creative: 创新洞察]
    
    Task1 --> Collect[结果收集]
    Task2 --> Collect
    Task3 --> Collect
    Task4 --> Collect
    
    Collect --> Integrate[Research: 结果整合]
    Integrate --> Validate{质量验证}
    
    Validate -->|不通过| Revise[返回修正]
    Revise --> Parallel
    
    Validate -->|通过| Output[生成调研报告]
    Output --> Deliver([交付成果])
    
    style Start fill:#e1f5e1
    style Deliver fill:#e1f5e1
    style Validate fill:#fff3cd
```

### 2.2 工作阶段说明

#### 阶段一：需求解析与任务分解 (Research)
- **输入**: 用户的调研需求
- **处理**: 分析需求复杂度，识别关键维度
- **输出**: 结构化的子任务清单

#### 阶段二：并行执行 (Sub-Agents)
- **rs-inspect**: 执行基础信息收集，建立知识框架
- **rs-search**: 进行深度搜索，验证信息准确性
- **rs-examine**: 审查逻辑一致性，识别潜在问题
- **creative**: 提供创新视角，生成独特洞察

#### 阶段三：结果整合 (Research)
- 汇总各子智能体的输出
- 识别冲突与补充
- 构建完整的研究框架

#### 阶段四：质量验证与输出 (Research)
- 多维度质量检查
- 必要时触发修正循环
- 生成最终调研报告

---

## 3. 子任务工作流

### 3.1 rs-inspect (研究检查员) 工作流

```mermaid
flowchart LR
    A[接收检查任务] --> B[识别信息需求]
    B --> C{任务类型}
    
    C -->|事实核查| D[验证事实准确性]
    C -->|来源评估| E[评估信息来源]
    C -->|初步筛选| F[信息相关性筛选]
    
    D --> G[整理检查结果]
    E --> G
    F --> G
    
    G --> H[标记可信度等级]
    H --> I([返回检查报告])
    
    style A fill:#e3f2fd
    style I fill:#e8f5e9
```

**主要职责**:
1. **事实核查**: 验证关键事实的准确性
2. **来源评估**: 评估信息来源的可靠性和权威性
3. **初步筛选**: 从海量信息中筛选相关内容
4. **可信度标记**: 为信息标注可信度等级

---

### 3.2 rs-search (研究搜索员) 工作流

```mermaid
flowchart TD
    Start([开始搜索]) --> Plan[制定搜索策略]
    Plan --> MultiSource[多源并行搜索]
    
    MultiSource --> Source1[学术数据库]
    MultiSource --> Source2[行业报告]
    MultiSource --> Source3[新闻资讯]
    MultiSource --> Source4[专业社区]
    
    Source1 --> CrossCheck[交叉验证]
    Source2 --> CrossCheck
    Source3 --> CrossCheck
    Source4 --> CrossCheck
    
    CrossCheck --> Trace[溯源追踪]
    Trace --> Consolidate[信息整合]
    Consolidate --> Output([搜索报告])
    
    style Start fill:#e3f2fd
    style Output fill:#e8f5e9
```

**主要职责**:
1. **搜索策略**: 制定全面的搜索计划
2. **多源搜索**: 同时检索学术、行业、媒体等多类来源
3. **交叉验证**: 对比多源信息，识别一致性与差异
4. **溯源追踪**: 追溯原始信息来源，确保可验证性

---

### 3.3 rs-examine (研究审查员) 工作流

```mermaid
flowchart LR
    A[接收审查任务] --> B[逻辑结构分析]
    B --> C[论据强度评估]
    C --> D{识别问题}
    
    D -->|逻辑漏洞| E[标记逻辑缺陷]
    D -->|矛盾冲突| F[识别矛盾点]
    D -->|证据不足| G[指出证据缺口]
    D -->|偏见风险| H[提示潜在偏见]
    
    E --> I[生成审查意见]
    F --> I
    G --> I
    H --> I
    
    I --> J([返回审查报告])
    
    style A fill:#e3f2fd
    style J fill:#e8f5e9
    style D fill:#fff3cd
```

**主要职责**:
1. **逻辑分析**: 检查论证的逻辑完整性
2. **论据评估**: 评估支持论据的强度
3. **矛盾识别**: 发现内部或外部矛盾
4. **偏见检测**: 识别潜在的认知偏见或立场偏见

---

### 3.4 creative (创意分析师) 工作流

```mermaid
flowchart TD
    Start([开始分析]) --> Pattern[模式识别]
    Pattern --> Lateral[横向联想]
    Lateral --> Trend[趋势推演]
    Trend --> Insight[洞察生成]
    
    Insight --> Novel{创新性评估}
    Novel -->|高创新| Keep[保留洞察]
    Novel -->|低创新| Discard[舍弃或深化]
    
    Discard --> DeepDive[深度挖掘]
    DeepDive --> Insight
    
    Keep --> Synthesize[洞察整合]
    Synthesize --> Output([创意报告])
    
    style Start fill:#e3f2fd
    style Output fill:#e8f5e9
    style Novel fill:#fff3cd
```

**主要职责**:
1. **模式识别**: 从数据中发现隐藏模式
2. **横向联想**: 跨领域关联，激发新视角
3. **趋势推演**: 基于现有数据预测未来趋势
4. **洞察生成**: 提炼独特的、有价值的见解

---

## 4. 协作模式

### 4.1 协作时序图

```mermaid
sequenceDiagram
    participant U as 用户
    participant R as Research
    participant SI as rs-inspect
    participant SS as rs-search
    participant SE as rs-examine
    participant C as creative
    
    U->>R: 提交调研需求
    R->>R: 任务分解
    
    par 并行执行
        R->>SI: 分配检查任务
        SI-->>R: 检查报告
    and
        R->>SS: 分配搜索任务
        SS-->>R: 搜索报告
    and
        R->>SE: 分配审查任务
        SE-->>R: 审查报告
    and
        R->>C: 分配分析任务
        C-->>R: 创意报告
    end
    
    R->>R: 结果整合
    R->>SE: 质量验证请求
    SE-->>R: 验证结果
    
    alt 需要修正
        R->>R: 触发修正循环
        R->>SI: 补充检查
        SI-->>R: 补充报告
    end
    
    R->>R: 生成最终报告
    R-->>U: 交付调研成果
```

### 4.2 信息流动

```mermaid
flowchart LR
    subgraph "输入层"
        I1[用户原始需求]
        I2[外部数据源]
    end
    
    subgraph "处理层"
        P1[rs-inspect<br/>信息采集]
        P2[rs-search<br/>深度挖掘]
        P3[rs-examine<br/>逻辑审查]
        P4[creative<br/>创新分析]
    end
    
    subgraph "整合层"
        M[Research<br/>结果整合]
    end
    
    subgraph "输出层"
        O1[结构化数据]
        O2[分析洞察]
        O3[趋势预测]
        O4[最终报告]
    end
    
    I1 --> M
    I2 --> P1
    I2 --> P2
    
    P1 --> M
    P2 --> M
    P3 --> M
    P4 --> M
    
    M --> O1
    M --> O2
    M --> O3
    M --> O4
```

---

## 5. 质量控制机制

### 5.1 多层验证体系

```mermaid
flowchart TD
    A[原始输出] --> B{第一层<br/>rs-examine<br/>逻辑审查}
    B -->|通过| C{第二层<br/>rs-inspect<br/>事实核查}
    B -->|不通过| D[返回修正]
    
    C -->|通过| E{第三层<br/>Research<br/>综合评估}
    C -->|不通过| D
    
    D --> F[定位问题]
    F --> G[重新执行]
    G --> A
    
    E -->|通过| H[最终输出]
    E -->|需优化| I[触发补充调研]
    I --> J[rs-search<br/>rs-inspect]
    J --> A
    
    style H fill:#d4edda
    style D fill:#f8d7da
```

### 5.2 质量评估维度

| 维度 | 评估内容 | 负责智能体 |
|------|----------|------------|
| **准确性** | 事实正确性、数据精确度 | rs-inspect, rs-search |
| **逻辑性** | 论证完整性、推理合理性 | rs-examine |
| **全面性** | 覆盖广度、角度多样性 | Research |
| **创新性** | 洞察深度、观点独特性 | creative |
| **时效性** | 信息新鲜度、趋势相关性 | rs-search |
| **可操作性** | 建议实用性、落地可行性 | Research |

---

## 6. 应用场景

深度调研团队适用于以下场景：

1. **市场研究**: 行业分析、竞品调研、用户研究
2. **学术研究**: 文献综述、理论梳理、方法论评估
3. **商业决策**: 投资机会分析、风险评估、战略规划
4. **政策研究**: 政策效果评估、趋势预测、影响分析
5. **技术调研**: 技术路线分析、专利研究、发展趋势

---

## 7. 使用说明

### 7.1 输入要求

为了获得最佳调研效果，请提供：
- **明确的调研目标**: 清楚说明需要回答的核心问题
- **背景信息**: 相关的上下文和已知信息
- **约束条件**: 时间范围、地域限制、预算考虑等
- **期望输出格式**: 报告结构、详细程度、侧重点

### 7.2 输出格式

调研团队将根据需求提供：
- **执行摘要**: 核心发现和关键建议
- **详细分析**: 分维度的深入分析
- **数据支撑**: 关键数据点和来源引用
- **可视化图表**: 必要的图表和图示
- **行动建议**: 基于洞察的具体建议

---

*文档版本: 1.0*  
*最后更新: 2026年3月*
