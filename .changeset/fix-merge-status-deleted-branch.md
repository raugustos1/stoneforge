---
"@stoneforge/smithy": patch
---

Fix `sf task merge-status merged` to fail when source branch is deleted and merge is unverifiable, instead of silently allowing through. Adds `--force` flag to bypass verification in legitimate edge cases.
