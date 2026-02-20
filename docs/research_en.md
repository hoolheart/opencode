# Deep Research Agent Group User Guide

## Overview

The Deep Research Agent Group is a specialized AI agent system designed to execute systematic, high-quality research tasks. Through the collaborative work of 6 specialized agents, it completes the entire research workflow from requirement clarification to final report delivery.

## Core Features

- **Strict Quality Control**: Multi-round review mechanism ensures factual accuracy
- **Complete Citation Traceability**: All claims must be supported by original sources
- **Creative Expansion Capability**: Automatically identifies blind spots and proposes new research directions
- **Standardized Workflow**: 8-stage process ensures research completeness
- **PDF Support**: Automatic processing and preservation of academic papers and documents

## Agent Composition

### 1. Research (Primary Agent)

**Type**: Primary  
**Temperature**: 0.5  
**Responsibilities**:
- Receive and clarify user research requirements
- Design questionnaires to help users specify details
- Coordinate other subagents to complete research tasks
- Manage the entire research workflow
- Deliver the final research report

**Input**: User's research requirements (domain, direction, objectives)  
**Output**: request.md, standard.md, final_report.md

### 2. Inspect (Query Design Agent)

**Type**: Subagent  
**Temperature**: 0.3  
**Responsibilities**:
- Design comprehensive search keywords based on requirements
- Identify priority websites and information sources
- Develop search strategies to ensure information coverage

**Input**: request.md, revise.md (if applicable)  
**Output**: search_plan.md

### 3. Search (Information Collection Agent)

**Type**: Subagent  
**Temperature**: 0.3  
**Responsibilities**:
- Execute search plans and collect web information
- Transcribe raw information into structured Markdown
- Save original PDF files to raw/pdfs/
- Maintain complete source citations

**Input**: search_plan.md  
**Output**: raw/*.md, raw/pdfs/*.pdf

### 4. Insight (Report Writing Agent)

**Type**: Subagent  
**Temperature**: 0.4  
**Responsibilities**:
- Analyze raw research materials
- Synthesize key insights and identify patterns
- Write structured research reports
- Ensure all claims have accurate citations

**Input**: request.md, raw/*.md, revise.md (if applicable)  
**Output**: result.md

### 5. Creative (Creative Thinking Agent)

**Type**: Subagent  
**Temperature**: 0.7 (Creative setting)  
**Responsibilities**:
- Identify blind spots and information gaps in research
- Propose alternative perspectives and angles
- Suggest new research directions and methods
- Cross-disciplinary thinking to find innovative approaches

**Input**: revise.md, result.md, request.md  
**Output**: creative_directions.md

### 6. Examine (Quality Review Agent)

**Type**: Subagent  
**Temperature**: 0.0 (Completely objective)  
**Responsibilities**:
- Rigorously review research reports
- Verify accuracy of every citation (mismatch → Major Revision)
- Check logical consistency and argument validity
- Determine revision level: Major/Minor/Pass

**Input**: standard.md, result.md, raw/*.md  
**Output**: examine_report.md, revise.md (if revision needed)

## Workflow

### Phase 1: Requirement Clarification
1. **Research** receives user research requirements
2. Determines if requirements are specific enough (can generate request.md and standard.md)
3. If not specific enough, designs questionnaire to clarify details with user

### Phase 2: Planning
1. **Research** creates `request.md` (Research Requirements Document)
2. **Research** creates `standard.md` (Review Criteria Document)

### Phase 3: Information Gathering
1. **Research** → **Inspect**: Designs search strategy based on request.md
2. **Inspect** outputs `search_plan.md`
3. **Research** → **Search**: Executes queries based on search_plan.md
4. **Search** outputs raw materials to `raw/` folder

### Phase 4: Analysis and Reporting
1. **Research** → **Insight**: Writes report based on raw materials
2. **Insight** outputs `result.md` (Research Report)

### Phase 5: Quality Assurance
1. **Research** → **Examine**: Reviews result.md based on standard.md
2. **Examine** outputs `examine_report.md` (Review Report)

**Review Result Determination**:
- **"Major Revision"**: Citation errors, major factual errors, logical contradictions → Go to Phase 6
- **"Minor Revision"**: Insufficient details, formatting issues → Go to Phase 7
- **"Pass"**: Quality standards met → Go to Phase 8

### Phase 6: Creative Expansion (for Major Revisions)
1. **Research** writes examine's improvement requirements to `revise.md`
2. **Research** → **Creative**: Proposes new research directions based on revise.md
3. **Creative** outputs `creative_directions.md`
4. **Research** integrates creative_directions.md and request.md
5. **Return to Phase 3** for expanded research

### Phase 7: Refinement (for Minor Revisions)
1. **Research** → **Insight**: Modifies result.md based on examine's feedback
2. **Return to Phase 5** for re-review
3. Loop until examine determines "Pass"

### Phase 8: Finalization and Delivery
1. **Research** adds metadata to the report:
   - Current date
   - Number of research cycles
   - Total time spent
   - List of all consulted sources
2. Outputs final report `final_report.md` to user

## Document Structure

The following documents will be generated during research:

```
workspace/
├── request.md              # Research requirements (Research creates)
├── standard.md             # Review criteria (Research creates)
├── search_plan.md          # Search plan (Inspect creates)
├── raw/                    # Raw materials folder (Search creates)
│   ├── 20250220_001_topic1.md
│   ├── 20250220_002_topic2.md
│   └── pdfs/               # Original PDF files
│       ├── 20250220_001_paper1.pdf
│       └── 20250220_002_paper2.pdf
├── result.md               # Research report (Insight creates/revises)
├── examine_report.md       # Review report (Examine creates)
├── revise.md               # Improvement requirements (Research creates based on Examine feedback)
├── creative_directions.md  # New research directions (Creative creates)
└── final_report.md         # Final report (Research creates)
```

## Usage

### Initiating Research

Submit a research request to the **Research** agent with the following information:

1. **Research Domain**: e.g., "Applications of AI in Medical Diagnosis"
2. **Key Directions**: Specific sub-domains or questions of interest
3. **Research Objectives**: Core questions to be answered
4. **Expected Output**: Report format, level of detail, etc. (optional)

**Example**:
```
Please conduct a deep research on "China's New Energy Vehicle Market Development".
Key directions:
- Market size and growth trends
- Major competitors and market share
- Policy environment and technological development
- Consumer preferences and purchasing behavior

Objectives: Comprehensive understanding of the current state and future trends of China's new energy vehicle market to support investment decisions.
```

### Cooperating with Requirement Clarification

If the Research agent determines the requirements are not specific enough, it will design a questionnaire for confirmation. Please answer as detailed as possible, as this helps improve research quality.

### Receiving the Final Report

Upon completion, you will receive `final_report.md` containing:
- Executive Summary
- Research objectives and scope
- Detailed findings and data analysis
- Conclusions and recommendations
- Complete list of cited sources
- Research process metadata

## Review Criteria

### Examine Agent Review Dimensions

1. **Citation Integrity (Critical)**
   - Every factual claim must have a citation
   - Cited content must match original materials
   - **Citation mismatch → Must require "Major Revision"**

2. **Factual Accuracy**
   - Statistical data must be correct
   - Dates, names, and details must be accurate
   - No false information

3. **Logical Consistency**
   - Clear argument structure
   - Conclusions based on evidence
   - No logical fallacies

4. **Completeness**
   - Answer all research questions
   - No obvious information gaps
   - Acknowledge uncertainties and contradictions

5. **Standard Compliance**
   - Meet requirements defined in standard.md
   - Professional writing standards
   - Format specifications

### Three-Level Revision System

- **Major Revision**: Citation errors, major factual errors, or logical issues require additional research
- **Minor Revision**: Content is basically correct but needs refinement of details, expression optimization, or structural adjustment
- **Pass**: Fully meets standards, ready for finalization

## Best Practices

1. **Be Specific with Requirements**: Clear requirements significantly improve research efficiency and quality
2. **Respond Promptly to Questionnaires**: Cooperate actively during the requirement clarification phase
3. **Preserve Raw Materials**: The raw/ folder saved by the Search agent contains all original information for verification
4. **Utilize the Revision Mechanism**: If dissatisfied with the report, trigger the revision process through feedback
5. **Pay Attention to Citations**: All conclusions have source support and are traceable for verification

## Notes

1. **Research Cycles**: Complex research may require multiple cycles (Clarification → Search → Analysis → Review → Revision)
2. **Information Timeliness**: Information obtained by the Search agent is current as of the query date, please note timeliness
3. **PDF Files**: Academic papers and important materials will have original PDFs saved to ensure information integrity
4. **Creative Agent**: Higher temperature setting (0.7) may propose unconventional but valuable research directions
5. **Examine Agent**: Extremely low temperature setting (0.0), extremely strict review standards, trusts only mathematics and logic

## Troubleshooting

### Excessive Research Time
- Requirements may be too broad, suggest narrowing the scope
- Check if multiple rounds of revision are needed

### Suboptimal Report Quality
- Check if standard.md defines clear criteria
- Consider whether the Creative agent needs to expand research directions
- Provide more specific feedback to the Research agent

### Citation Issues
- The Examine agent strictly checks every citation
- Ensure the Search agent's raw/ materials are complete
- If issues are found, "Major Revision" will be required with supplementary research

## Technical Details

### Agent Configuration

All agent definition files are located in the `agents/` directory:
- `research.md` - Primary agent configuration
- `inspect.md` - Query design agent configuration
- `search.md` - Information collection agent configuration
- `insight.md` - Report writing agent configuration
- `creative.md` - Creative thinking agent configuration
- `examine.md` - Quality review agent configuration

### Temperature Settings

- **0.0 (Examine)**: Completely objective, no creativity, strictly fact-based
- **0.3 (Inspect/Search)**: Low temperature, precise execution, reduced randomness
- **0.4 (Insight)**: Medium temperature, analytical thinking, balance between objectivity and synthesis
- **0.5 (Research)**: Medium temperature, coordination management, flexible adaptation
- **0.7 (Creative)**: Higher temperature, encourages innovation and divergent thinking

## Version Information

- **Version**: 1.0
- **Creation Date**: 2025-02-20
- **Review Status**: ✅ Passed Review Agent Audit
- **Status**: Ready for use

## Support

For questions or suggestions, please contact the development team or refer to agent definition files for detailed configuration information.

---

*This system uses a multi-agent architecture with task decomposition and quality control mechanisms to ensure delivery of high-quality research outcomes.*