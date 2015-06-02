---
layout: page
permalink: /support/reporting-bugs/
title: Reporting Bugs
support: true
lead: >
  This page give generic instructions for reporting bugs to the nfc-tools projects (these are general guidelines, they should apply to any project).
---

## Openning an issue

Each nfc-tools project has it's own code repository and bug tracker.  Bug reports shall therefore be written in the apporpriate bug tracker.

Before openning a new issue, please ensure that a similar problem has not already been reported.  If you find one, you should provide more information in the existing issue if applicable and not open a duplicate one.

## Providing a *Minimal Failing Example*

*Minimal Failing Example* (MFE) are sometimes referring to as *Minimal Working Example* (MWE), however, since your code is supposed to break, we prefer to name them *failing*…

A MFE should be complete a `.c` file with all `#include`s and a `main()` function that makes the problem evident. It will help us greatly to reproduce it quickly in order to diagnose and fix the problems you report or to spot a misuse..

## Providing a failing test case

A failling test case is a kind of MFE that is really handy for core features in order to avoid regressions.  If you spot a bug in an untested area, by providing a failing test case with the issue you are reporting you will ensure that the problem is not going to trigger anymore at any time in the future.
