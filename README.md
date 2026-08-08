# 1100111 Sequence Detector

A reviewed and corrected version of this project, with a build check and
fuller documentation, is in [verilog-digital-design](https://github.com/Penchal9959/verilog-digital-design) alongside the others from the same
series.

## What this was

A detector for the bit pattern `1100111` in a serial stream, implemented twice:
once as a Mealy machine and once as a Moore machine. Non-overlapping, so the
state resets after a match rather than allowing the tail of one match to begin
the next.

Building both is the exercise: the Mealy version needs fewer states and reacts
in the same cycle as the final bit; the Moore version registers its output and
so responds a cycle later, but is immune to input glitches.

## Known defects

**The testbench here cannot fail.** It is `$display`-only - it prints a
waveform for a human to read and never asserts anything, so it reports nothing
whether the design works or not. The maintained copy adds a self-checking
testbench that counts detections against a reference and prints PASS or FAIL.

## Licence

[MIT](LICENSE)
