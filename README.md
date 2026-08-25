# PowerShell IT Toolkit

**Project:** 003  
**Status:** Active / Building - approximately 50% complete

A practical PowerShell toolkit for Windows administration, diagnostics and automation. Project 003 builds on the Windows infrastructure and networking work from Projects 001 and 002.

## Objectives

- Build reusable administration scripts
- Automate repetitive support tasks
- Use PowerShell objects rather than text parsing where possible
- Query systems, services, networking and logs
- Implement structured error handling and logging
- Build scripts that can be tested independently

## Completed So Far

- [x] PowerShell fundamentals and object pipeline
- [x] System inventory
- [x] Service inspection and management
- [x] Network diagnostics
- [x] Basic parameter handling
- [x] Exit-code based health checks
- [x] Structured output

## Remaining Work

- [ ] User and account administration
- [ ] Event log collection
- [ ] Advanced health checks
- [ ] Persistent logging
- [ ] Reusable toolkit modules
- [ ] Pester test coverage
- [ ] Packaging and final documentation

## Project Structure

```text
powershell-it-toolkit/
├── README.md
├── scripts/
│   ├── system/
│   ├── networking/
│   ├── users/
│   ├── services/
│   └── diagnostics/
├── docs/
├── reference/
└── tests/
```

## Method

**Build → test → break → investigate → fix → document.**

The toolkit is being developed incrementally. Scripts are kept small and composable so they can be tested individually before being combined into reusable modules.

## Current Milestone

Project 003 is intentionally left at the halfway point. The core inventory, service and networking layer is established; account administration, event collection, test automation and packaging remain as the next implementation phase.

## Project Status

**PROJECT_001 - Windows Infrastructure Lab:** Complete / Documented  
**PROJECT_002 - Networking Lab:** Complete / Documented  
**PROJECT_003 - PowerShell IT Toolkit:** Active / ~50% Complete