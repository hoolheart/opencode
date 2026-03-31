---
name: clawskill-creator
description: Create OpenClaw skills following best practices from the OpenClaw technical research report. Use when user wants to create a new OpenClaw skill, wrap CLI tools as skills, or develop skills using TypeScript, Python, or Rust. Triggered when user mentions creating a skill, wrapping CLI tools, or developing skills for OpenClaw.
---

# OpenClaw Skill Creator

## Overview

Create OpenClaw skills following research report best practices, with support for TypeScript/JavaScript, Python, and Rust CLI tool wrapping. Skills extend OpenClaw agents' capabilities through declarative Markdown + YAML configuration.

## Skill Directory Structure

```
skill-name/
├── SKILL.md              (required)
│   ├── YAML frontmatter  (metadata)
│   └── Markdown instructions (body)
├── scripts/              (optional - executable code)
├── references/           (optional - reference materials)
└── assets/               (optional - output resources)
```

## SKILL.md Structure

### YAML Frontmatter (Required)

```yaml
---
name: skill-name
description: Clear description with trigger conditions and when to use
metadata:
  openclaw:
    emoji: 📝           # Optional display icon
    requires:
      bins: ["binary"]  # Required binaries
      env: ["VAR"]      # Required environment variables
      config: ["key"]    # Required config items
    install:
      - id: brew
        kind: brew
        formula: package-name
        bins: ["binary"]
---
```

### Markdown Body

Follow progressive disclosure - keep essential content in main body, move detailed docs to references/.

## Multi-Language Skill Development

### 1. TypeScript/JavaScript Skills

OpenClaw is built with TypeScript, offering best native support.

**Structure:**
```
my-ts-skill/
├── SKILL.md
├── scripts/
│   ├── index.ts      # Main logic
│   └── utils.ts      # Utility functions
├── package.json
└── tsconfig.json
```

**SKILL.md Example:**
```markdown
---
name: my-ts-skill
description: Use this skill to process data with TypeScript
metadata:
  openclaw:
    requires:
      bins: ["node"]
---

# Usage Instructions

Run `node scripts/index.ts` to process data...
```

### 2. Python Skills

Use `uv` or `pip` for dependency management.

**Structure:**
```
my-python-skill/
├── SKILL.md
├── scripts/
│   ├── main.py
│   └── requirements.txt
└── pyproject.toml
```

**SKILL.md Example:**
```markdown
---
name: my-python-skill
description: Use this skill for ML tasks
metadata:
  openclaw:
    requires:
      bins: ["python3", "pip"]
    install:
      - id: pip
        kind: pip
        packages: ["numpy", "pandas"]
        bins: []
---

# Usage Instructions

Run `python3 scripts/main.py` to execute ML tasks...
```

### 3. Rust Skills

Wrap pre-compiled binaries via `cargo install` or bundled binaries.

**Development Flow:**
```
Rust Project --> cargo build --release --> Precompiled binary --> scripts/ --> Skill
```

**SKILL.md Example:**
```markdown
---
name: my-rust-skill
description: High-performance data processing
metadata:
  openclaw:
    requires:
      bins: ["my-rust-tool"]
    install:
      - id: cargo
        kind: cargo
        crate: my-rust-tool
        bins: ["my-rust-tool"]
---

# Usage Instructions

Run `my-rust-tool` to process data...
```

## CLI Tool Wrapper Pattern

Most flexible approach - wrap any CLI tool as a skill.

### Universal Template

```markdown
---
name: {tool-name}-skill
description: Use {tool-name} to {action}. Trigger when user wants to {trigger condition}.
metadata:
  openclaw:
    emoji: 🔧
    requires:
      bins: ["{tool-binary}"]
    install:
      - id: {installer}
        kind: {brew|npm|pip|cargo}
        {formula|package|crate}: {package-name}
        bins: ["{tool-binary}"]
---

# {Tool Name} Skill

## Overview

This skill uses the `{tool-binary}` CLI tool.

## Use Cases

1. Use Case A
2. Use Case B

## Common Commands

```bash
# Basic usage
{tool-binary} --help

# Example 1
{tool-binary} command1 --option value

# Example 2
{tool-binary} command2 arg1 arg2
```

## Notes

- Note 1
- Note 2
```

## Skill Gating (Loading Conditions)

Control skill loading with metadata conditions:

| Condition | Description | Example |
|-----------|-------------|---------|
| `always: true` | Always load | Core skills |
| `os` | Platform filter | `["darwin", "linux"]` |
| `requires.bins` | Binary required | `["gh", "node"]` |
| `requires.anyBins` | At least one needed | `["docker", "podman"]` |
| `requires.env` | Environment variable | `["NOTION_API_KEY"]` |
| `requires.config` | Config key required | `["github.token"]` |

## Skill Loading Priority

Skills load in this order (high to low):

1. `<workspace>/skills/`
2. `<workspace>/.agents/skills`
3. `~/.agents/skills`
4. `~/.openclaw/skills`
5. Bundled skills
6. `skills.load.extraDirs`

## Token Optimization

- Base overhead: ~195 characters per skill list
- Per skill: ~97 characters + XML-escaped length
- **Tips:**
  - Limit simultaneous loaded skills
  - Use gating to prevent unnecessary loading
  - Keep descriptions concise
  - Use progressive disclosure for detailed content

## Skill Creation Workflow

### Step 1: Understand Requirements

Confirm with concrete examples:
- What functionality should the skill support?
- What are trigger conditions?
- What CLI tools or scripts are needed?
- What dependencies (bins, env, config)?

### Step 2: Plan Resources

Identify reusable contents:
- **scripts/** - Executable code for deterministic tasks
- **references/** - Documentation to load as needed
- **assets/** - Templates, boilerplate for output

### Step 3: Initialize Skill

```bash
python3 scripts/init_skill.py <skill-name> --path <output-directory>
```

### Step 4: Edit Skill

1. Write SKILL.md with proper frontmatter
2. Implement scripts (test each one)
3. Add reference documentation
4. Add assets if needed
5. Delete unused example files

### Step 5: Validate and Package

```bash
python3 scripts/package_skill.py <path/to/skill-folder>
```

## Skill Development Best Practices

### From Research Report

1. **Progressive Disclosure**: Level 1 (metadata) → Level 2 (body <500 lines) → Level 3 (bundled resources)

2. **Concise is Key**: Context window is precious
   - ❌ Avoid: Verbose explanations
   - ✅ Recommend: Direct examples and commands

3. **Freedom Matching**:
   | Level | When to Use |
   |-------|-------------|
   | High | Multiple valid approaches |
   | Medium | Preferred pattern exists |
   | Low | Fragile, consistency critical |

4. **Naming Convention**: `lowercase-hyphenated` (e.g., `github`, `ripgrep-search`)

5. **Security**: Treat third-party skills as untrusted, inject secrets via `skills.entries.*.env`

## Example: Wrapping ripgrep

```markdown
---
name: ripgrep-search
description: Use ripgrep (rg) for fast text search. Trigger when user wants to search code or text files.
metadata:
  openclaw:
    emoji: 🔍
    requires:
      bins: ["rg"]
    install:
      - id: brew
        kind: brew
        formula: ripgrep
        bins: ["rg"]
---

# Ripgrep Search Skill

## Fast Text Search with ripgrep

### Basic Search

```bash
rg "search pattern"
```

### Common Options

```bash
# Search specific file types
rg "pattern" -t rust

# Show line numbers
rg "pattern" -n
```

### Notes

- Recursively searches current directory by default
- Automatically ignores files in .gitignore
- Supports regular expressions
```

## References

For detailed OpenClaw architecture, see:
`/home/hzhou/workspace/llm_research/20260331-openclaw/report.md`

Key sections:
- Section 4: Skill System Details
- Section 4.3: SKILL.md Writing Specification
- Section 4.5: Skill Gating
- Section 5: Multi-Language Skill Development
- Section 7.2: Skill Best Practices
