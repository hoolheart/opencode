# Marketing Team

## 1. Team Composition

The Marketing Team consists of **1 Lead Agent** and **4 Sub-Agents**, specializing in brand strategy development, market analysis, marketing planning, and execution.

### 1.1 Lead Agent: marketing

**Role**: Marketing Team Leader, responsible for coordinating the entire marketing workflow, developing brand strategy, integrating outputs from sub-agents, and ensuring marketing objectives are achieved.

**Core Responsibilities**:
- Analyze market needs and competitive landscape
- Develop brand positioning and marketing strategy
- Coordinate sub-agents to execute specific tasks
- Integrate outputs and control overall marketing direction
- Evaluate marketing effectiveness and propose optimization recommendations

### 1.2 Sub-Agents

#### mk-tom (Brand Strategy Specialist)

**Role**: Brand strategy development expert, responsible for brand positioning, value proposition design, and brand architecture planning.

**Core Responsibilities**:
- Brand positioning analysis (STP Model)
- Core brand value extraction
- Brand story and proposition design
- Competitive differentiation strategy
- Brand architecture planning

**Workflow**:
```mermaid
flowchart TD
    A[Receive Brand Background] --> B[Market & Competitor Analysis]
    B --> C[Target Audience Profiling]
    C --> D[Brand Positioning Design]
    D --> E[Value Proposition Extraction]
    E --> F[Brand Story Construction]
    F --> G[Output Brand Strategy Plan]
    G --> H[Review & Iteration]
    H -->|Not Approved| D
    H -->|Approved| I[Deliver Final Plan]
```

#### mk-jerry (Content Marketing Specialist)

**Role**: Content marketing strategist, responsible for content planning, creative concept development, and communication strategy formulation.

**Core Responsibilities**:
- Content marketing strategy development
- Creative concept and theme design
- Content calendar planning
- Multi-channel content adaptation
- Content performance evaluation framework

**Workflow**:
```mermaid
flowchart TD
    A[Define Marketing Objectives] --> B[Audience Content Preference Analysis]
    B --> C[Creative Concept Brainstorming]
    C --> D[Core Message Design]
    D --> E[Content Matrix Planning]
    E --> F[Channel Adaptation Strategy]
    F --> G[Content Calendar Development]
    G --> H[KPI & Evaluation Framework]
    H --> I[Output Content Marketing Plan]
```

#### mk-mike (Digital Marketing Specialist)

**Role**: Digital marketing and growth expert, responsible for digital marketing strategy, channel management, and data-driven optimization.

**Core Responsibilities**:
- Digital channel strategy (SEO/SEM/Social/Email)
- Growth hacking strategies
- Marketing automation planning
- Data analysis and attribution
- ROI optimization solutions

**Workflow**:
```mermaid
flowchart TD
    A[Define Digital Marketing Goals] --> B[Channel Analysis & Selection]
    B --> C[User Journey Design]
    C --> D[Conversion Funnel Optimization]
    D --> E[Advertising Strategy Development]
    E --> F[Marketing Automation Planning]
    F --> G[Data Tracking System]
    G --> H[Budget Allocation & ROI Forecast]
    H --> I[Output Digital Marketing Plan]
```

#### mk-steve (Event Planning Specialist)

**Role**: Marketing event and campaign planning expert, responsible for online and offline event planning, execution, and performance evaluation.

**Core Responsibilities**:
- Marketing event creativity and planning
- Event execution plan design
- Budget and resource planning
- Risk management and contingency planning
- Event performance evaluation

**Workflow**:
```mermaid
flowchart TD
    A[Define Event Objectives] --> B[Target Audience Analysis]
    B --> C[Event Concept Development]
    C --> D[Event Plan Design]
    D --> E[Execution Plan Development]
    E --> F[Budget & Resource Planning]
    F --> G[Risk Assessment & Contingency]
    G --> H[Promotion Strategy Design]
    H --> I[Performance Evaluation Framework]
    I --> J[Output Event Plan]
```

## 2. Overall Workflow

The Marketing Team adopts the **Five Views & Three Certainties** methodology to guide the overall workflow:

```mermaid
flowchart TD
    Start([Start]) --> Analysis[Phase 1: Market Insight]
    
    subgraph FiveViews [Five Views Analysis]
        A1[View Market: Trends & Scale] --> A2[View Industry: Value Chain]
        A2 --> A3[View Competition: Benchmarking]
        A3 --> A4[View Self: Brand Assets Audit]
        A4 --> A5[View Opportunity: Growth Opportunities]
    end
    
    Analysis --> FiveViews
    FiveViews --> Strategy[Phase 2: Strategy Formulation]
    
    subgraph ThreeCertainties [Three Certainties Decision]
        S1[Certainty Strategy: Brand Positioning & Goals] --> S2[Certainty Tactics: Marketing Mix Strategy]
        S2 --> S3[Certainty Capability: Resource Allocation & Organization]
    end
    
    Strategy --> ThreeCertainties
    ThreeCertainties --> Execution[Phase 3: Execution Planning]
    
    subgraph CollaborativeExecution [Collaborative Execution]
        E1[mk-tom: Brand Strategy] --> E2[mk-jerry: Content Planning]
        E2 --> E3[mk-mike: Digital Marketing]
        E3 --> E4[mk-steve: Event Planning]
        E4 --> E5[Integration & Optimization]
    end
    
    Execution --> CollaborativeExecution
    CollaborativeExecution --> Review[Phase 4: Review & Iteration]
    Review --> End([End])
    
    style Start fill:#e1f5ff
    style End fill:#e1f5ff
    style FiveViews fill:#fff8e1
    style ThreeCertainties fill:#e8f5e9
    style CollaborativeExecution fill:#fce4ec
```

### Workflow Phase Descriptions

#### Phase 1: Market Insight
- **View Market**: Macro trends, market size, growth drivers
- **View Industry**: Industry chain structure, value distribution, key links
- **View Competition**: Competitor analysis, differentiation opportunities, competitive landscape
- **View Self**: Brand assets, strengths and weaknesses, core capabilities
- **View Opportunity**: Market gaps, growth points, strategic opportunities

#### Phase 2: Strategy Formulation
- **Certainty Strategy**: Brand vision, positioning, target audience, value proposition
- **Certainty Tactics**: 4P/7P marketing mix, channel strategy, communication strategy
- **Certainty Capability**: Budget allocation, team capabilities, technical tools

#### Phase 3: Execution Planning
- Sub-agents work in parallel
- Regular synchronization and integration
- Dynamic adjustment and optimization

#### Phase 4: Review & Iteration
- Performance evaluation and data analysis
- Experience summary and documentation
- Strategy iteration and optimization

## 3. Sub-Task Workflows

### 3.1 Comprehensive Brand Planning Workflow

```mermaid
flowchart TD
    Start([Project Launch]) --> Brief[Collect Brief & Background]
    
    Brief --> Parallel1[Parallel Analysis Phase]
    
    subgraph ParallelAnalysis [Parallel Analysis]
        direction TB
        P1[mk-tom: Brand Diagnosis] 
        P2[mk-jerry: Content Status]
        P3[mk-mike: Digital Channel Audit]
        P4[mk-steve: Past Event Review]
    end
    
    Parallel1 --> ParallelAnalysis
    ParallelAnalysis --> Synthesis[marketing: Comprehensive Analysis]
    
    Synthesis --> Strategy[Strategy Formulation]
    
    subgraph StrategyDevelopment [Strategy Development]
        direction TB
        S1[Brand Positioning Strategy] --> S2[Content Marketing Strategy]
        S2 --> S3[Digital Growth Strategy]
        S3 --> S4[Event Promotion Strategy]
    end
    
    Strategy --> StrategyDevelopment
    StrategyDevelopment --> Integration[Integrated Marketing Plan]
    
    Integration --> Review[Plan Review]
    Review -->|Needs Revision| Strategy
    Review -->|Approved| Delivery[Deliver Execution Manual]
    Delivery --> End([Project Complete])
    
    style Start fill:#e1f5ff
    style End fill:#e1f5ff
    style ParallelAnalysis fill:#fff3e0
    style StrategyDevelopment fill:#e8f5e9
```

### 3.2 Product Launch Marketing Workflow

```mermaid
flowchart TD
    Start([Product Launch Start]) --> Info[Collect Product Information]
    
    Info --> Market[Market & Competitor Analysis]
    Market --> Position[Product Positioning Design]
    
    Position --> ParallelExec[Parallel Execution]
    
    subgraph LaunchPreparation [Launch Preparation]
        direction TB
        E1[mk-tom: Product Story<br/>Naming & Positioning]
        E2[mk-jerry: Content Materials<br/>Production Plan]
        E3[mk-mike: Warm-up Campaign<br/>Channel Strategy]
        E4[mk-steve: Launch Event<br/>Planning]
    end
    
    ParallelExec --> LaunchPreparation
    LaunchPreparation --> Sync[Progress Sync & Coordination]
    Sync --> Integration[Integrated Launch Plan]
    
    Integration --> Review[Plan Review]
    Review -->|Revision| ParallelExec
    Review -->|Approved| Timeline[Develop Launch Timeline]
    
    Timeline --> Launch[Launch Execution]
    Launch --> Monitor[Performance Monitoring]
    Monitor --> Optimize[Dynamic Optimization]
    Optimize --> Report[Review Report]
    Report --> End([Project End])
    
    style Start fill:#e1f5ff
    style End fill:#e1f5ff
    style LaunchPreparation fill:#fce4ec
```

### 3.3 Brand Campaign Workflow

```mermaid
flowchart TD
    Start([Campaign Launch]) --> Brief[Requirement Brief Interpretation]
    
    Brief --> Objectives[Objective Breakdown]
    Objectives --> Concept[Creative Concept Development]
    
    Concept --> Brainstorm[Cross-Sub-Agent Brainstorming]
    
    subgraph CreativeBrainstorming [Creative Brainstorming Session]
        direction TB
        B1[mk-tom: Brand Tone Control]
        B2[mk-jerry: Creative Content Direction]
        B3[mk-mike: Communication Channel Creativity]
        B4[mk-steve: Offline Event Creativity]
    end
    
    Brainstorm --> CreativeBrainstorming
    CreativeBrainstorming --> ConceptSelect[Creative Proposal Evaluation]
    
    ConceptSelect --> Development[Plan Refinement]
    
    subgraph DetailedDevelopment [Detailed Development]
        direction TB
        D1[Core Creative Concept] --> D2[Content Materials List]
        D2 --> D3[Communication Timeline]
        D3 --> D4[Event Execution Plan]
        D4 --> D5[Budget & Resources]
    end
    
    Development --> DetailedDevelopment
    DetailedDevelopment --> FinalReview[Final Review]
    FinalReview -->|Not Approved| Concept
    FinalReview -->|Approved| Production[Material Production]
    
    Production --> Launch[Campaign Launch]
    Launch --> Monitor[Real-time Monitoring]
    Monitor --> Optimization[Optimization Adjustment]
    Optimization --> FinalReport[Closing Report]
    FinalReport --> End([Project End])
    
    style Start fill:#e1f5ff
    style End fill:#e1f5ff
    style CreativeBrainstorming fill:#e3f2fd
    style DetailedDevelopment fill:#f3e5f5
```

### 3.4 Daily Marketing Operations Workflow

```mermaid
flowchart TD
    Start([Monthly/Quarterly Launch]) --> Review[Previous Period Review]
    Review --> Goals[Goal Setting]
    
    Goals --> ParallelPlan[Parallel Planning]
    
    subgraph OperationsPlanning [Operations Planning]
        direction TB
        P1[mk-tom: Brand Consistency Check]
        P2[mk-jerry: Content Calendar Development]
        P3[mk-mike: Advertising Plan Optimization]
        P4[mk-steve: Event Schedule Planning]
    end
    
    ParallelPlan --> OperationsPlanning
    OperationsPlanning --> Integration[Integrated Operations Plan]
    Integration --> Approval[Plan Approval]
    
    Approval --> Execution[Execution Phase]
    
    subgraph DailyExecution [Daily Execution]
        direction TB
        E1[Content Publishing & Monitoring]
        E2[Advertising Campaign Management]
        E3[Event Execution Tracking]
        E4[Data Collection & Analysis]
    end
    
    Execution --> DailyExecution
    DailyExecution --> WeeklySync[Weekly Sync]
    WeeklySync --> Adjustment[Strategy Adjustment]
    Adjustment -->|Major Adjustment| ParallelPlan
    Adjustment -->|Minor Tuning| Execution
    
    Execution --> MonthlyReport[Monthly Report]
    MonthlyReport --> End([Period End])
    
    style Start fill:#e1f5ff
    style End fill:#e1f5ff
    style OperationsPlanning fill:#e0f2f1
    style DailyExecution fill:#fffde7
```

## 4. Output Standards

### 4.1 Standard Deliverables

#### Brand Strategy Plan (mk-tom)
- Brand positioning statement
- Target audience personas
- Brand value proposition
- Competitive differentiation strategy
- Brand story and tone guidelines

#### Content Marketing Plan (mk-jerry)
- Content strategy framework
- Creative concepts and themes
- Content matrix planning
- Channel content adaptation plan
- Content calendar
- KPI and evaluation framework

#### Digital Marketing Plan (mk-mike)
- Digital channel strategy
- Growth strategy and funnel optimization
- Advertising plan and budget
- Marketing automation plan
- Data tracking system
- ROI forecast and optimization recommendations

#### Event Planning Plan (mk-steve)
- Event creativity and concept
- Detailed execution plan
- Budget and resource planning
- Timeline and milestones
- Risk management and contingency plans
- Promotion and communication plan
- Performance evaluation framework

### 4.2 Integrated Deliverables (marketing)

- **Marketing Strategy Blueprint**: Strategic-level document integrating all sub-plans
- **Execution Manual**: Detailed implementation guide
- **Timeline and Milestones**: Project key node planning
- **Master Budget**: Overall budget allocation and control
- **Risk Management Plan**: Project risk assessment and response
- **Performance Evaluation System**: Full-funnel performance tracking framework

## 5. Collaboration Standards

### 5.1 Communication Mechanisms

- **Kickoff Meeting**: Clarify objectives, division of labor, and timeline at project start
- **Weekly Sync**: Weekly progress synchronization and issue coordination
- **Milestone Review**: Plan review and decision-making at key nodes
- **Retrospective**: Experience summary after project completion

### 5.2 Output Standards

- All plans must use Markdown format
- Must include Executive Summary
- Key data must be sourced
- Recommendations must be specific and actionable
- Use SMART principles for goal setting

### 5.3 Quality Control

- **Self-Check**: Each sub-agent conducts self-check before output
- **Peer Review**: Cross-review among relevant sub-agents
- **Final Review**: marketing lead agent final approval
- **Iteration**: Rapid iteration and optimization based on feedback

---

**Document Version**: v1.0  
**Last Updated**: March 2025  
**Scope**: All agents in Marketing Team
