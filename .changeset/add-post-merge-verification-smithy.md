---
"@stoneforge/smithy": patch
---

Add post-merge verification to `sf task merge` CLI command. After mergeBranch() succeeds, the command now independently verifies that commits landed on the remote target branch before marking the task as merged. Returns actionable error messages if verification fails.
