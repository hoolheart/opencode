---
name: agent-creator
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
permission:       # allow/deny/ask
  read: allow
  write: allow
  edit: allow
  bash: deny
  webfetch: ask
  skill:
    "*": allow   # allow/deny/ask other skills
    "xxx": allow # allow specific skills
---

## Resposibilities

- Job 1
- ...

## Skills

- When doing xxx, use skill({name: "skill name"})

```

- Query user to collect necessary information of agent
- Search relevant skills in local config, confirm with user and then specify them in agent file
- Add any section in agent file as required by user

## When to use me

Use this when user are creating agent.

**Note**: No matter which language user uses, write agent file in English only.
