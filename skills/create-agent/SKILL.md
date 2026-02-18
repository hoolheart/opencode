---
name: create-agent
description: create agent via interaction with user
license: MIT
compatibility: opencode
metadata:
  audience: administrator

---

## What I do

- Use the following template to create agent in `agents` folder

```markdown
---
description: %{description of agent}
mode: primary/subagent
temperature: 0.3	# (0~1)
steps: 10         # interger, remove this option if agent should work without step limit
tools:
  skill: true     # enable skill
permission:       # allow/deny/ask
  read: allow
  write: allow
  edit: allow
  bash: deny
  webfetch: ask
  skill:
    "xxx": "allow" # allow specific skills
    "*": "allow"   # allow/deny/ask other skills
---

## Resposibilities

- Job 1
- ...

## Rules

- When doing xxx, follow the rule from {file:rules/XXX-guidelines.md}

## Skills

- When doing xxx, use skill({name: "skill name"})

```

- Query user to collect necessary information of agent
- Search relevant rules and skills in local config, confirm with user and then specify them in agent file
- If user requires web search, then search relevant rules and skills in internet, select best practice, confirm with user and then add them into local config (rule put in `rules` folder, skill put in `skills` folder), specify them in agent file

## When to use me

Use this when user are creating agent.

**Note**: If user speaks language other than English, use such language to communicate with user but always create agent file in English.
