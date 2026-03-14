# Executive Team

## Overview

The Executive Team is the core team responsible for document creation and quality assurance. The team employs a rigorous **two-stage review process** to ensure every document meets professional standards.

## Team Composition

The Executive Team consists of the following roles, forming a **primary-subagent collaboration model**:

| Role | Type | Responsibilities |
|------|------|------------------|
| **Executive Agent** | Primary Agent | Document creation, format processing, framework application, submission for review |
| **Review** | Subagent | Quality review, feedback provision, approve/reject decisions |

### Role Relationship

```mermaid
flowchart TB
    subgraph Team["Executive Team"]
        E["📝 Executive Agent<br/>Primary Agent"]
        R["🔍 Review<br/>Subagent"]
    end
    
    E <-->|"Submit for Review<br/>Receive Feedback"| R
    
    style E fill:#e1f5fe,stroke:#01579b,stroke-width:2px
    style R fill:#fff3e0,stroke:#e65100,stroke-width:2px
    style Team fill:#f5f5f5,stroke:#424242,stroke-width:2px
```

## Getting Started

### How to Request a Document

Submit your request with the following information:

| Information | Description | Example |
|-------------|-------------|---------|
| **Document Type** | What kind of document you need | "Strategic Plan" |
| **Purpose** | Why you need this document | "Board presentation for Q1 planning" |
| **Audience** | Who will read it | "C-level executives" |
| **Format** | Output format | "PowerPoint (.pptx)" |
| **Framework** | Preferred structure (optional) | "Five Views & Three Certainties" |
| **Constraints** | Special requirements | "Maximum 15 slides" |

### What to Expect

1. **Initial Response**: Executive Agent confirms requirements
2. **First Draft**: Document created following the 5-phase workflow
3. **Review Cycle**: Review subagent evaluates quality (may require revisions)
4. **Final Delivery**: Approved document delivered with summary

### Example Request

> "Create a quarterly business review presentation (PPT) for our executive team covering Q3 performance. Use the STAR framework for key initiatives. Keep it under 20 slides."

## Core Principles

The Executive Team adheres to the following principles:

1. **McKinsey-Style Writing**: Structured, pyramid principle, data-driven
2. **MECE Principle**: Mutually Exclusive, Collectively Exhaustive categorization
3. **Mandatory Review Cycle**: Every document must undergo review and approval
4. **Evidence-First**: Conclusions must be supported by facts

## Overall Workflow

The Executive Team's complete workflow follows a **5-phase document development process** that incorporates iterative quality control:

```mermaid
flowchart TD
    Start(["Start"]) --> Phase1["Phase 1: Requirements Understanding<br/>• Clarify purpose and audience<br/>• Select analytical frameworks<br/>• Confirm constraints"]
    
    Phase1 --> Phase2["Phase 2: Content Development<br/>• Apply logical structures<br/>• Use appropriate frameworks<br/>• Create Mermaid diagrams"]
    
    Phase2 --> Phase3["Phase 3: Format Processing<br/>• docx/pptx/xlsx/pdf<br/>• Direct Markdown editing"]
    
    Phase3 --> Phase4["Phase 4: Mandatory Review<br/>• Submit to Review subagent<br/>• Process feedback<br/>• Iterate until approved"]
    
    Phase4 --> Decision{"Review Result?"}
    Decision -->|"Revisions Needed"| Revise["Revise Document"] --> Phase4
    Decision -->|"Approved"| Phase5["Phase 5: Final Delivery<br/>• Present approved document<br/>• Summarize key points<br/>• Offer follow-up support"]
    
    Phase5 --> End(["End"])
    
    style Start fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px
    style End fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px
    style Phase4 fill:#fff3e0,stroke:#e65100,stroke-width:2px
    style Decision fill:#fff8e1,stroke:#f57f17,stroke-width:2px
    style Revise fill:#ffebee,stroke:#c62828,stroke-width:2px
```

### Phase Details

#### Phase 1: Requirements Understanding
- **Objective**: Ensure correct document direction
- **Key Activities**:
  - Clarify document purpose, audience, and key messages
  - Identify appropriate format and structure
  - Select relevant analytical frameworks
  - Confirm specific constraints or preferences

#### Phase 2: Content Development
- **Objective**: Create high-quality content
- **Key Activities**:
  - Apply McKinsey-style structure
  - Use appropriate frameworks and logical structures
  - Include Mermaid diagrams for visualization
  - Ensure MECE principle in categorization

#### Phase 3: Format Processing
- **Objective**: Ensure professional presentation
- **Key Activities**:
  - Word documents (.docx): Use `skill({name: "docx"})`
  - PowerPoint (.pptx): Use `skill({name: "pptx"})`
  - Excel (.xlsx): Use `skill({name: "xlsx"})`
  - PDF: Use `skill({name: "pdf"})`
  - Other formats: Direct file operations

#### Phase 4: Mandatory Review (Core Phase)
- **Objective**: Ensure quality standards
- **Key Activities**:
  - **Submit for Review**: Call Review subagent after each draft completion
  - **Process Feedback**: Decide next steps based on review results
  - **Iteration Loop**: Resubmit after revision if needed

#### Phase 5: Final Delivery
- **Objective**: Complete and present the document
- **Key Activities**:
  - Present the approved document
  - Summarize key points and recommendations
  - Provide follow-up support

## Subtask Workflow: Review Process

The review process is the core quality assurance mechanism of the Executive Team, employing a **mandatory review cycle**:

```mermaid
sequenceDiagram
    participant E as Executive Agent<br/>Primary Agent
    participant R as Review<br/>Subagent
    
    Note over E,R: Document Creation Complete
    
    E->>R: Submit Document for Review
    activate R
    
    Note right of R: Review Dimensions:<br/>1. Clarity and Logical Structure<br/>2. Information Completeness<br/>3. Framework and Methodology Application<br/>4. Professional Tone and Style<br/>5. Formatting and Presentation<br/>6. Actionability of Recommendations
    
    R-->>E: Return Review Results
    deactivate R
    
    alt Status: APPROVED
        Note over E: ✓ Review Passed<br/>Proceed to Phase 5 Final Delivery
    else Status: REVISIONS NEEDED
        Note over E: ✗ Revisions Required<br/>Analyze Feedback and Modify
        E->>E: Implement Revisions
        E->>R: Resubmit for Review
        Note over E,R: Repeat Cycle Until Approved
    end
```

### Review Checklist

The Review subagent evaluates documents across the following dimensions with specific criteria:

| Review Dimension | Evaluation Content | Specific Criteria |
|-----------------|-------------------|-------------------|
| **Clarity** | Is the structure clear? Is the logic smooth? | • Clear heading hierarchy (H1→H2→H3)<br>• Each paragraph has one main idea<br>• Logical transitions between sections<br>• Conclusion stated upfront |
| **Completeness** | Is the information complete? Are necessary elements missing? | • All sections from requirements addressed<br>• Examples provided where needed<br>• Context sufficient for target audience<br>• No critical information gaps |
| **Framework Application** | Are analytical frameworks used appropriately? | • Framework choice matches content type<br>• Framework applied consistently<br>• Framework adds value, not just decoration |
| **Professional Style** | Is the tone and style professional and consistent? | • Appropriate formality for audience<br>• Consistent terminology throughout<br>• No unnecessary jargon or filler<br>• Active voice where appropriate |
| **Format Presentation** | Is the format correct? Is the visual presentation professional? | • Tables aligned and formatted<br>• Code blocks syntax-highlighted<br>• Consistent use of bold/italics<br>• Visual elements support text |
| **Actionability** | Are recommendations specific and feasible? | • Clear next steps identified<br>• Recommendations are specific<br>• Resource requirements stated<br>• Timeline or priority indicated |

### Review Decision Rules

```mermaid
flowchart TD
    Start(["Receive Document"]) --> Check1{"Clarity and<br/>Logical Structure<br/>Qualified?"}
    Check1 -->|"No"| Revise1["Request Revisions:<br/>Optimize structure and logic"]
    Check1 -->|"Yes"| Check2{"Is Information<br/>Complete and Accurate?"}
    
    Check2 -->|"No"| Revise2["Request Revisions:<br/>Add missing information"]
    Check2 -->|"Yes"| Check3{"Framework Application<br/>Appropriate?"}
    
    Check3 -->|"No"| Revise3["Request Revisions:<br/>Adjust framework usage"]
    Check3 -->|"Yes"| Check4{"Professionalism and<br/>Format Meet<br/>Standards?"}
    
    Check4 -->|"No"| Revise4["Request Revisions:<br/>Improve professionalism and format"]
    Check4 -->|"Yes"| Check5{"Are Recommendations<br/>Actionable?"}
    
    Check5 -->|"No"| Revise5["Request Revisions:<br/>Make recommendations actionable"]
    Check5 -->|"Yes"| Approve["✓ APPROVED<br/>Document Approved"]
    
    Revise1 & Revise2 & Revise3 & Revise4 & Revise5 --> Feedback["REVISIONS NEEDED<br/>Provide Detailed Feedback"]
    Feedback --> End1(["Return to Executive"])
    Approve --> End2(["Return to Executive"])
    
    style Start fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px
    style Approve fill:#c8e6c9,stroke:#2e7d32,stroke-width:2px
    style End2 fill:#c8e6c9,stroke:#2e7d32,stroke-width:2px
    style Feedback fill:#ffebee,stroke:#c62828,stroke-width:2px
    style End1 fill:#ffebee,stroke:#c62828,stroke-width:2px
```

## Document Types Supported

The Executive Team supports the creation and revision of the following document types:

### Communication
- **Emails**: Professional correspondence, announcements, requests
- **Meeting Minutes**: Structured records of discussions and decisions
- **Memos**: Internal communications and policy updates

### Planning & Strategy
- **Strategic Plans**: Long-term direction using Five Views & Three Certainties framework
- **Project Plans**: Scope, timeline, resources, risks
- **Annual Plans**: Yearly objectives and key results
- **Work Plans**: Quarterly/monthly operational plans

### Analysis & Reports
- **Business Analysis**: Market research, competitive analysis, feasibility studies
- **Review Reports**: Post-project retrospectives
- **Research Reports**: Data-driven insights and recommendations

### Technical Documentation
- **Design Documents**: Architecture, system design, API specifications
- **Test Documentation**: Test plans, test cases, test reports
- **User Guides**: Instructions and tutorials
- **API Documentation**: Technical references

### Presentations
- **Executive Presentations**: Board decks, investor updates
- **Project Presentations**: Kickoffs, status updates, retrospectives
- **Training Materials**: Educational content and workshops

## Analytical Framework Toolkit

The Executive Team is proficient in the following analytical frameworks:

### Logical Structures
| Framework | Description |
|-----------|-------------|
| **STAR** | Situation, Task, Action, Result |
| **SQCA** | Situation, Question, Complication, Answer |
| **Why-What-How** | Purpose, Content, Method |
| **5W2H** | What, Why, Who, When, Where, How, How much |

### Business Analysis Tools
| Framework | Description |
|-----------|-------------|
| **Five Views & Three Certainties** | Market, Industry, Competition, Self, Opportunity / Strategy, Tactics, Capability |
| **SWOT** | Strengths, Weaknesses, Opportunities, Threats |
| **PEST** | Political, Economic, Social, Technological |
| **Porter's Five Forces** | Competitive rivalry, Supplier power, Buyer power, Threat of substitution, Threat of new entry |
| **BCG Matrix** | Stars, Cash Cows, Question Marks, Dogs |
| **Business Model Canvas** | Nine building blocks for business model innovation |

### Management Principles
| Framework | Description |
|-----------|-------------|
| **SMART** | Specific, Measurable, Achievable, Relevant, Time-bound |
| **MECE** | Mutually Exclusive, Collectively Exhaustive |
| **PDCA** | Plan, Do, Check, Act |

### Framework Selection Guide

Choose the right framework based on your document type and purpose:

| Document Type | Recommended Framework | Why This Framework |
|---------------|----------------------|-------------------|
| **Project Retrospective** | STAR | Captures context, actions, and outcomes clearly |
| **Problem-Solving Report** | SQCA | Structures problem analysis and solution presentation |
| **Strategic Plan** | Five Views & Three Certainties | Comprehensive market and capability analysis |
| **Business Case** | SWOT | Balanced internal/external factor analysis |
| **Market Analysis** | PEST | Systematic environmental scan |
| **Competitive Analysis** | Porter's Five Forces | Industry structure evaluation |
| **Product Portfolio** | BCG Matrix | Strategic positioning of products/business units |
| **New Initiative** | Business Model Canvas | Holistic business model design |
| **Goal Setting** | SMART | Clear, actionable objective definition |
| **Process Improvement** | PDCA | Iterative improvement methodology |
| **Documentation Structure** | Why-What-How | Clear information architecture |
| **Requirements Gathering** | 5W2H | Comprehensive coverage of all aspects |
| **Communication** | MECE | Organized, non-overlapping categories |

## Mermaid Diagram Usage Guidelines

The Executive Team uses Mermaid diagrams in Markdown for visualization:

### Applicable Scenarios
- **Flowcharts**: Workflows, decision trees
- **Sequence Diagrams**: Interaction processes, temporal relationships
- **Timeline Diagrams**: Roadmaps, schedules
- **Organizational Charts**: Structures, relationship maps

### Example
```mermaid
flowchart TD
    A[Start] --> B{Decision Point}
    B -->|Yes| C[Action 1]
    B -->|No| D[Action 2]
    C --> E[End]
    D --> E
```

## Quality Standards

Every document must meet the following standards:

1. **Clarity**: Clear purpose, structure, and easily understandable information
2. **Accuracy**: Factually correct, properly sourced
3. **Conciseness**: No redundant words or filler content
4. **Completeness**: All necessary information included
5. **Consistency**: Uniform style, terminology, and formatting
6. **Actionability**: Clear next steps or recommendations
7. **Professionalism**: Appropriate tone and presentation

## Workflow Summary

```mermaid
flowchart LR
    subgraph Input["Input"]
        I1["Document Request"]
        I2["Existing Document"]
    end
    
    subgraph Process["Processing Flow"]
        P1["Executive Agent<br/>Primary Agent"]
        P2["Create/Revise<br/>Document"]
        P3["Review<br/>Subagent"]
        P4["Quality Review"]
    end
    
    subgraph Output["Output"]
        O1["✓ Approved Document"]
    end
    
    I1 & I2 --> P1
    P1 --> P2
    P2 --> P3
    P3 --> P4
    P4 -->|"APPROVED"| O1
    P4 -->|"Revisions Needed"| P1
    
    style Input fill:#e3f2fd,stroke:#1565c0,stroke-width:2px
    style Process fill:#fff3e0,stroke:#e65100,stroke-width:2px
    style Output fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px
```

---

**Note**: The Executive Team's workflow ensures that every document undergoes strict quality control, delivering high-quality results to professional standards.
