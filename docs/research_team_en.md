# Deep Research Team

## 1. Team Composition

The Deep Research Team is an intelligent agent collaboration system designed to execute complex, multi-dimensional research tasks. The team adopts a "1 main + 4 sub" architecture, achieving efficient and comprehensive research analysis through task decomposition and parallel execution.

### 1.1 Organizational Structure

```mermaid
flowchart TB
    subgraph "Research Team"
        R[Main Agent<br/>Research<br/>Research Dispatch Center]
        
        subgraph "Sub-Agents"
            SI[rs-inspect<br/>Research Inspector]
            SS[rs-search<br/>Research Searcher]
            SE[rs-examine<br/>Research Examiner]
            C[creative<br/>Creative Analyst]
        end
    end
    
    R --> SI
    R --> SS
    R --> SE
    R --> C
    
    SI -.->|Feedback| R
    SS -.->|Feedback| R
    SE -.->|Feedback| R
    C -.->|Feedback| R
```

### 1.2 Role Responsibilities

| Role | Type | Core Responsibilities | Areas of Expertise |
|------|------|----------------------|-------------------|
| **Research** | Main Agent | Task dispatch, result integration, quality control, final output | Coordination, complex task decomposition |
| **rs-inspect** | Sub-Agent | Information collection and preliminary analysis | Data acquisition, information retrieval, initial screening |
| **rs-search** | Sub-Agent | Deep search and multi-source verification | Multi-dimensional search, cross-verification, source tracing |
| **rs-examine** | Sub-Agent | Content review and logic verification | Logical analysis, quality review, contradiction identification |
| **creative** | Sub-Agent | Innovative perspectives and insight generation | Pattern recognition, innovative thinking, trend prediction |

---

## 2. Overall Workflow

### 2.1 Main Process Flow

```mermaid
flowchart TD
    Start([Start Research Task]) --> Input[Receive Research Requirements]
    Input --> Decompose[Research: Task Decomposition]
    Decompose --> Parallel[Parallel Task Distribution]
    
    Parallel --> Task1[rs-inspect: Basic Info Collection]
    Parallel --> Task2[rs-search: Deep Search & Verification]
    Parallel --> Task3[rs-examine: Logic Review]
    Parallel --> Task4[creative: Creative Insights]
    
    Task1 --> Collect[Result Collection]
    Task2 --> Collect
    Task3 --> Collect
    Task4 --> Collect
    
    Collect --> Integrate[Research: Result Integration]
    Integrate --> Validate{Quality Validation}
    
    Validate -->|Failed| Revise[Return for Correction]
    Revise --> Parallel
    
    Validate -->|Passed| Output[Generate Research Report]
    Output --> Deliver([Deliver Results])
    
    style Start fill:#e1f5e1
    style Deliver fill:#e1f5e1
    style Validate fill:#fff3cd
```

### 2.2 Workflow Phases

#### Phase 1: Requirement Analysis & Task Decomposition (Research)
- **Input**: User's research requirements
- **Process**: Analyze requirement complexity, identify key dimensions
- **Output**: Structured sub-task list

#### Phase 2: Parallel Execution (Sub-Agents)
- **rs-inspect**: Execute basic information collection, establish knowledge framework
- **rs-search**: Conduct deep search, verify information accuracy
- **rs-examine**: Review logical consistency, identify potential issues
- **creative**: Provide innovative perspectives, generate unique insights

#### Phase 3: Result Integration (Research)
- Aggregate outputs from all sub-agents
- Identify conflicts and complementary information
- Build complete research framework

#### Phase 4: Quality Validation & Output (Research)
- Multi-dimensional quality checks
- Trigger correction loops when necessary
- Generate final research report

---

## 3. Sub-Task Workflows

### 3.1 rs-inspect (Research Inspector) Workflow

```mermaid
flowchart LR
    A[Receive Inspection Task] --> B[Identify Information Needs]
    B --> C{Task Type}
    
    C -->|Fact Check| D[Verify Fact Accuracy]
    C -->|Source Assessment| E[Evaluate Information Sources]
    C -->|Initial Screening| F[Relevance Screening]
    
    D --> G[Compile Inspection Results]
    E --> G
    F --> G
    
    G --> H[Tag Credibility Level]
    H --> I([Return Inspection Report])
    
    style A fill:#e3f2fd
    style I fill:#e8f5e9
```

**Key Responsibilities**:
1. **Fact Checking**: Verify accuracy of key facts
2. **Source Assessment**: Evaluate reliability and authority of information sources
3. **Initial Screening**: Filter relevant content from massive information
4. **Credibility Tagging**: Label information with credibility levels

---

### 3.2 rs-search (Research Searcher) Workflow

```mermaid
flowchart TD
    Start([Start Search]) --> Plan[Develop Search Strategy]
    Plan --> MultiSource[Multi-Source Parallel Search]
    
    MultiSource --> Source1[Academic Databases]
    MultiSource --> Source2[Industry Reports]
    MultiSource --> Source3[News & Media]
    MultiSource --> Source4[Professional Communities]
    
    Source1 --> CrossCheck[Cross-Verification]
    Source2 --> CrossCheck
    Source3 --> CrossCheck
    Source4 --> CrossCheck
    
    CrossCheck --> Trace[Source Tracing]
    Trace --> Consolidate[Information Consolidation]
    Consolidate --> Output([Search Report])
    
    style Start fill:#e3f2fd
    style Output fill:#e8f5e9
```

**Key Responsibilities**:
1. **Search Strategy**: Develop comprehensive search plans
2. **Multi-Source Search**: Simultaneously retrieve from academic, industry, media sources
3. **Cross-Verification**: Compare multi-source information, identify consistency and discrepancies
4. **Source Tracing**: Trace original information sources to ensure verifiability

---

### 3.3 rs-examine (Research Examiner) Workflow

```mermaid
flowchart LR
    A[Receive Review Task] --> B[Logical Structure Analysis]
    B --> C[Argument Strength Assessment]
    C --> D{Identify Issues}
    
    D -->|Logic Flaws| E[Flag Logic Defects]
    D -->|Contradictions| F[Identify Conflicts]
    D -->|Insufficient Evidence| G[Point Out Evidence Gaps]
    D -->|Bias Risks| H[Alert Potential Biases]
    
    E --> I[Generate Review Comments]
    F --> I
    G --> I
    H --> I
    
    I --> J([Return Review Report])
    
    style A fill:#e3f2fd
    style J fill:#e8f5e9
    style D fill:#fff3cd
```

**Key Responsibilities**:
1. **Logical Analysis**: Check logical completeness of arguments
2. **Argument Assessment**: Evaluate strength of supporting arguments
3. **Contradiction Identification**: Discover internal or external contradictions
4. **Bias Detection**: Identify potential cognitive or positional biases

---

### 3.4 creative (Creative Analyst) Workflow

```mermaid
flowchart TD
    Start([Start Analysis]) --> Pattern[Pattern Recognition]
    Pattern --> Lateral[Lateral Thinking]
    Lateral --> Trend[Trend Projection]
    Trend --> Insight[Insight Generation]
    
    Insight --> Novel{Innovation Assessment}
    Novel -->|High Innovation| Keep[Keep Insight]
    Novel -->|Low Innovation| Discard[Discard or Deepen]
    
    Discard --> DeepDive[Deep Dive]
    DeepDive --> Insight
    
    Keep --> Synthesize[Insight Synthesis]
    Synthesize --> Output([Creative Report])
    
    style Start fill:#e3f2fd
    style Output fill:#e8f5e9
    style Novel fill:#fff3cd
```

**Key Responsibilities**:
1. **Pattern Recognition**: Discover hidden patterns in data
2. **Lateral Thinking**: Cross-domain associations to spark new perspectives
3. **Trend Projection**: Predict future trends based on existing data
4. **Insight Generation**: Extract unique, valuable insights

---

## 4. Collaboration Patterns

### 4.1 Collaboration Sequence Diagram

```mermaid
sequenceDiagram
    participant U as User
    participant R as Research
    participant SI as rs-inspect
    participant SS as rs-search
    participant SE as rs-examine
    participant C as creative
    
    U->>R: Submit Research Request
    R->>R: Task Decomposition
    
    par Parallel Execution
        R->>SI: Assign Inspection Task
        SI-->>R: Inspection Report
    and
        R->>SS: Assign Search Task
        SS-->>R: Search Report
    and
        R->>SE: Assign Review Task
        SE-->>R: Review Report
    and
        R->>C: Assign Analysis Task
        C-->>R: Creative Report
    end
    
    R->>R: Result Integration
    R->>SE: Quality Validation Request
    SE-->>R: Validation Results
    
    alt Requires Correction
        R->>R: Trigger Correction Loop
        R->>SI: Supplementary Inspection
        SI-->>R: Supplementary Report
    end
    
    R->>R: Generate Final Report
    R-->>U: Deliver Research Results
```

### 4.2 Information Flow

```mermaid
flowchart LR
    subgraph "Input Layer"
        I1[User Original Request]
        I2[External Data Sources]
    end
    
    subgraph "Processing Layer"
        P1[rs-inspect<br/>Info Collection]
        P2[rs-search<br/>Deep Mining]
        P3[rs-examine<br/>Logic Review]
        P4[creative<br/>Innovation Analysis]
    end
    
    subgraph "Integration Layer"
        M[Research<br/>Result Integration]
    end
    
    subgraph "Output Layer"
        O1[Structured Data]
        O2[Analysis Insights]
        O3[Trend Predictions]
        O4[Final Report]
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

## 5. Quality Control Mechanisms

### 5.1 Multi-Layer Validation System

```mermaid
flowchart TD
    A[Raw Output] --> B{Layer 1<br/>rs-examine<br/>Logic Review}
    B -->|Pass| C{Layer 2<br/>rs-inspect<br/>Fact Check}
    B -->|Fail| D[Return for Correction]
    
    C -->|Pass| E{Layer 3<br/>Research<br/>Comprehensive Assessment}
    C -->|Fail| D
    
    D --> F[Identify Issues]
    F --> G[Re-execute]
    G --> A
    
    E -->|Pass| H[Final Output]
    E -->|Needs Optimization| I[Trigger Supplementary Research]
    I --> J[rs-search<br/>rs-inspect]
    J --> A
    
    style H fill:#d4edda
    style D fill:#f8d7da
```

### 5.2 Quality Assessment Dimensions

| Dimension | Assessment Content | Responsible Agent |
|-----------|-------------------|-------------------|
| **Accuracy** | Fact correctness, data precision | rs-inspect, rs-search |
| **Logicality** | Argument completeness, reasoning validity | rs-examine |
| **Comprehensiveness** | Coverage breadth, angle diversity | Research |
| **Innovation** | Insight depth, viewpoint uniqueness | creative |
| **Timeliness** | Information freshness, trend relevance | rs-search |
| **Actionability** | Recommendation practicality, implementation feasibility | Research |

---

## 6. Application Scenarios

The Deep Research Team is suitable for the following scenarios:

1. **Market Research**: Industry analysis, competitive research, user studies
2. **Academic Research**: Literature review, theoretical analysis, methodology assessment
3. **Business Decision-Making**: Investment opportunity analysis, risk assessment, strategic planning
4. **Policy Research**: Policy effectiveness evaluation, trend prediction, impact analysis
5. **Technology Research**: Technology roadmap analysis, patent research, development trends

---

## 7. Usage Guidelines

### 7.1 Input Requirements

To achieve optimal research results, please provide:
- **Clear Research Objectives**: Clearly state the core questions that need answers
- **Background Information**: Relevant context and known information
- **Constraints**: Time range, geographic limits, budget considerations, etc.
- **Expected Output Format**: Report structure, level of detail, focus areas

### 7.2 Output Format

The research team will provide based on requirements:
- **Executive Summary**: Core findings and key recommendations
- **Detailed Analysis**: In-depth analysis by dimension
- **Data Support**: Key data points and source citations
- **Visual Charts**: Necessary charts and diagrams
- **Action Recommendations**: Specific recommendations based on insights

---

*Document Version: 1.0*  
*Last Updated: 2024*
