---
name: skill-manager
description: >-
  Manage, search, activate, and deactivate skills between the Vault (~/.agents/skills-vault)
  and the Active pool (~/.agents/skills). Use when the user asks to activate, search, list, or
  synchronize skills for a project or technology.
---

# Skill Manager (Vault <-> Active Pool)

Use this skill to manage skills from the catalog of 1,835+ skills without overloading the agent's context window.

## Location
- CLI Script: `node C:/Users/Anderson/.agents/skill-manager.js`
- Catalog: `C:/Users/Anderson/.agents/skills-catalog.json`
- Vault: `C:/Users/Anderson/.agents/skills-vault`
- Active: `C:/Users/Anderson/.agents/skills`

## Common Commands

1. **Auto-detect & Sync for current project**:
   ```bash
   node C:/Users/Anderson/.agents/skill-manager.js auto "<project-path>"
   ```

2. **List Active Skills**:
   ```bash
   node C:/Users/Anderson/.agents/skill-manager.js list
   ```

3. **Search for Skills**:
   ```bash
   node C:/Users/Anderson/.agents/skill-manager.js search <keyword>
   ```

4. **Activate Skills**:
   ```bash
   node C:/Users/Anderson/.agents/skill-manager.js activate <skill1,skill2,...>
   ```

5. **Activate a Bundle**:
   ```bash
   node C:/Users/Anderson/.agents/skill-manager.js bundle <core|web|backend|fullstack|python|security>
   ```

6. **Deactivate Skills**:
   ```bash
   node C:/Users/Anderson/.agents/skill-manager.js deactivate <skill1,skill2,...>
   ```
