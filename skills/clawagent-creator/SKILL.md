---
name: clawagent-creator
description: Create OpenClaw agents following best practices from the OpenClaw technical research report. Use when user wants to create a new OpenClaw agent, including defining agent identity, responsibilities, team structure, workflow, and cooperation patterns. Triggered when user mentions creating an agent, defining agent behavior, or setting up agent collaboration for OpenClaw.
---

# OpenClaw Agent Creator

## Overview

Create OpenClaw agents with proper structure, following the research report's best practices on agent design, workspace configuration, lifecycle management, and inter-agent communication.

## OpenClaw Agent Architecture

OpenClaw agents are core execution units with four main responsibilities:

1. **Process user input** - Natural language understanding and intent recognition
2. **Invoke tools** - Match and execute appropriate skills
3. **Manage session state** - Maintain context and persist state
4. **Cooperate with other agents** - Use `sessions_*` tools for multi-agent collaboration

## Agent File Structure

Agent files are located in `~/.config/opencode/agents/` and use Markdown format:

```markdown
---
description: [Brief description of agent's role]
mode: [primary|subagent]
temperature: [0.0-1.0]
permission:
  read: [allow|deny|ask]
  write: [allow|deny|ask]
  edit: [allow|deny|ask]
  bash: [allow|deny|ask]
  webfetch: [allow|deny|ask]
  skill: [allow|deny|ask]
---

## Identity

[Agent name and core identity statement]

## Responsibilities

[Detailed responsibilities and capabilities]

## Team (if applicable)

[List of team members for multi-agent collaboration]

## Workflow

[Step-by-step workflow for agent operation]

## Skills

[List of skills this agent can use]
```

## Agent Best Practices from Research Report

### 1. Progressive Disclosure Principle

Structure agent files using three-level loading:

- **Level 1: Metadata** (~100 words) - Always in context
- **Level 2: Main instructions** (<500 lines) - Loaded on trigger
- **Level 3: Bundled resources** - Loaded as needed

### 2. Workspace Directory Structure

```
~/.openclaw/workspace/
├── AGENTS.md          # Agent behavior definition
├── SOUL.md           # Personality configuration
├── TOOLS.md          # Tool documentation
└── skills/           # Skills directory
```

### 3. Agent Lifecycle States

```
[*] --> Idle --> Processing --> SkillMatching --> Executing --> Idle
                                    |                  |
                                    v                  v
                                 [No Skill]          [Error] --> Processing
```

### 4. Inter-Agent Communication

Use built-in `sessions_*` tools:

| Tool | Function | Use Case |
|------|----------|----------|
| `sessions_list` | Discover active sessions | Agent discovery |
| `sessions_history` | Get session history | Context sync |
| `sessions_send` | Send message to session | Task delegation |

**Collaboration Patterns:**

**Master-Slave:**
```
Master Agent (Planning)
    ↓ sessions_send
Slave Agent 1 (Research) ←→ Slave Agent 2 (Code)
    ↓ sessions_send
Master Agent aggregates results
```

**Pipeline:**
```
User Input → Agent A (Preprocessing) → sessions_send →
Agent B (Core Processing) → sessions_send →
Agent C (Postprocessing) → User
```

## Agent Creation Workflow

### Step 1: Clarify Requirements

Before creating, confirm:
- Agent's primary purpose and responsibilities
- Whether agent is primary or subagent
- Team structure (if multi-agent)
- Required skills and permissions
- Communication patterns with other agents

### Step 2: Define Identity

Write clear identity statement:
- Agent name and role
- Core belief or operating philosophy
- What the agent believes about its work

### Step 3: Define Responsibilities

List specific responsibilities:
- What tasks does the agent handle
- What decisions does the agent make
- What tools/skills does the agent use
- What are the boundaries

### Step 4: Define Workflow

For primary agents:
1. Clarify requirements with user
2. Confirm details before creation
3. Create or modify agent files
4. Trigger review
5. Iterate based on feedback

For subagent/reviewer agents:
1. Receive task from primary agent
2. Execute review/verification
3. Return results or suggestions

### Step 5: Set Permissions

Configure minimal permissions needed:
- `read: allow` - Required for most tasks
- `write: allow` - For agents that modify files
- `edit: allow` - For agents that edit content
- `bash: allow` - Only for agents needing shell access
- `skill: allow` - Required for using skills

## Naming Conventions

- Format: `lowercase-hyphenated`
- Agent names: Descriptive of role (e.g., `baishi`, `daqian`, `reviewer`)
- Style: Short, clear identifiers

## Skill Integration

Reference required skills in SKILL.md:
```markdown
## Skills

- Use skill({name:"clawagent-creator"})
- Use skill({name:"clawskill-creator"})
```

## References

For detailed OpenClaw architecture, see research report at:
`/home/hzhou/workspace/llm_research/20260331-openclaw/report.md`

Key sections:
- Section 3: Agent System Details
- Section 3.4: Agent Inter-Communication
- Section 3.5: Writing Agent Rules
- Section 7.1: Agent Best Practices
