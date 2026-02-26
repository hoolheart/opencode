# Brainstorm Team Creation Plan

## Goal
Create a brainstorming agent team with 1 primary agent (brainstorm) and 7 subagents based on the Six Thinking Hats methodology.

## Agent Structure

### Primary Agent
- **brainstorm** - Facilitator and coordinator of the brainstorming session ✅

### Subagents (7 - based on Six Thinking Hats + 1)
Using common English names with "bm-" prefix:

1. **bm-walter** - White Hat: Facts, data, objective information ✅
2. **bm-rose** - Red Hat: Emotions, feelings, intuition ✅
3. **bm-blake** - Black Hat: Caution, critical thinking, risks ✅
4. **bm-yolanda** - Yellow Hat: Optimism, benefits, positive aspects ✅
5. **bm-gwen** - Green Hat: Creativity, innovation, new ideas ✅
6. **bm-bruce** - Blue Hat: Control, organization, process management ✅
7. **bm-violet** - Violet/Purple Hat: Vision, synthesis, holistic thinking ✅

## Workflow Requirements

1. ✅ User initiates discussion → brainstorm confirms background, goals, expected output → writes to agenda.md
2. ✅ brainstorm dispatches 7 subagents for research/thinking → collects responses → writes to diss_x.md
3. ✅ brainstorm shares diss_x.md with subagents → they provide feedback → records to diss_x.md
4. ✅ brainstorm summarizes round results to result_x.md
5. ✅ User reviews result_x.md → if feedback, record to agenda.md → go back to step 2; if approved, continue
6. ✅ brainstorm calls review agent to audit final output → revise based on feedback → deliver to user

## Phases

### Phase 1: Create Subagents (7 agents)
- [x] bm-walter (White Hat)
- [x] bm-rose (Red Hat)
- [x] bm-blake (Black Hat)
- [x] bm-yolanda (Yellow Hat)
- [x] bm-gwen (Green Hat)
- [x] bm-bruce (Blue Hat)
- [x] bm-violet (Violet Hat)

### Phase 2: Create Primary Agent
- [x] brainstorm (Facilitator)

### Phase 3: Review
- [ ] zhurong reviews all agents
- [ ] Fix any issues

## Files Created
- `/Users/hzhou/.config/opencode/agents/brainstorm.md` - Primary facilitator agent
- `/Users/hzhou/.config/opencode/agents/bm-walter.md` - White Hat (Facts)
- `/Users/hzhou/.config/opencode/agents/bm-rose.md` - Red Hat (Emotions)
- `/Users/hzhou/.config/opencode/agents/bm-blake.md` - Black Hat (Caution)
- `/Users/hzhou/.config/opencode/agents/bm-yolanda.md` - Yellow Hat (Optimism)
- `/Users/hzhou/.config/opencode/agents/bm-gwen.md` - Green Hat (Creativity)
- `/Users/hzhou/.config/opencode/agents/bm-bruce.md` - Blue Hat (Process)
- `/Users/hzhou/.config/opencode/agents/bm-violet.md` - Violet Hat (Vision)

## Status
- Current Phase: Phase 3 - Under Review
- Started: 2025-02-26
- All 8 agents created successfully
- Pending review by zhurong
