---
name: create-agent-group
description: create or optimize agent group due to given workflow
license: MIT
compatibility: opencode
---

## What I do

Create or optimize a group of multiple agents.

Such agent group includes only one primary agent and multiple subagents. Create or optimize agent files in global config (e.g. OpenCode `~/.config/opencode/agents`), or project config (e.g. OpenCode `{PROJECT_PATH}/.opencode/agents`) if required explicitly by user.

The general principle is to seperate plan, work and review into different agents for each task.

The primary agent is responsible to interactive with user, make plan and lead other subagents to finish tasks.

Before actual work, primary agent should confirm user's request, review standard and plan with user and confirm feasibility with at least one subagent.

Without user's specific require, the primary agent is responsible to make plan and to control process.

Long workflow should be seperated into mulple sections. At beginning of each section, plan should be confirmed with user. At the end of each section, result should be confirmed with user.

Use the templates in this skill to write or edit agent files.

The primary agent file should include all subagents' descriptions and overall workflow description.

Describe each task in each agent's file and list propriate skills scanned in current config.

All agents' files are written in English.

## When to use me

Use this when user wants to create a group of agents to fulfill a given workflow.

## Templates

### primary agent

```markdown
---
description: %{description of agent}
mode: primary
temperature: 0.3
permission:       # allow/deny/ask
  read: allow
  write: allow
  edit: allow
  bash: allow
  webfetch: allow
  websearch: allow
  skill: allow
---

## Team

Introduce all agents in this group, including their brief description

## Workflow

describe overall workflow of agent group

## Resposibilities

overall description of all responsibilites

### Clarify user need

- When: user start a new XXX work
- Input: user request, confirmation
- Output: request.md, standard.md
- Process:
  1. analyse user request, try to understand details and review standard;
  2. if not clear, make a questionare to ask user;
  3. confirm with yyy subagent to confirm feasibility of request;
  4. if not feasible, try to modify request and confirm with user;
  5. write down request.md and standard.md, make a plan, confirm with user;
  6. revise according to user's feedback;
  7. start process after user's complete confirmation.

### Job 2...

## Skills

- Use skill({name:"superpowers"})
- Use skill({name:"planning-with-files"})
- Other skills if any
```

### subagent

```markdown
---
description: %{description of agent}
mode: subagent
temperature: 0.3	# (0~1)
steps: 10         # remove if no step count limit
permission:       # allow/deny/ask
  read: allow
  write: allow
  edit: allow
  bash: deny
  webfetch: ask
  websearch: allow
  skill:
    "xxx": "allow" # allow specific skills
    "*": "ask"     # other skills need be ask
---

## Resposibilities

overall description of all responsibilites

### Job 1

- When:
- Input:
- Output:
- Process:
	1. ...

## Skills

- When doing xxx, use skill({name: "skill name"})

```
