# 1100111 Sequence Detector

> **This repository is archived.** The reviewed and corrected version
> of this project lives in [verilog-digital-design](https://github.com/Penchal9959/verilog-digital-design), alongside the
> others from the same series. Work happens there; nothing here changes.

### Why you want the maintained copy

The testbench here is `$display`-only - it prints a waveform for a human to read and never asserts anything, so it cannot fail. The maintained copy adds a self-checking testbench that compares against a reference model and reports PASS or FAIL.

---

## Original description

A sequence detector is a sequential state machine that takes an input string of bits and generates an output 1 whenever the target sequence has been detected.
Non-overlapping sequence detector, built as both a Mealy and a Moore
state machine.