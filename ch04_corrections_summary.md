# Chapter 4 Corrections Summary

This document summarizes all corrections made to Chapter 4 in response to the detailed mathematical critique.

## Critical Mathematical Errors Fixed

### 1. Wilson-Fisher Numerics (Section 7, Box 4.6)
**Error:** The O(ε²) approximation was given as 3/242 ≈ 0.0124
**Correction:** Changed to 3/162 ≈ 0.0185
**Calculation:** For n=1, ε=1: η = [(n+2)/(2(n+8)²)]ε² = [3/(2·81)]·1 = 3/162

### 2. PME Transseries Expansion (Section 6)
**Error:** The Taylor expansion had incorrect coefficient d(d+2)/8 for the (m-1)² term
**Correction:** Changed to d²/8
**Derivation:** 
- β = 1/[d(m-1)+2] = (1/2)·1/(1 + d(m-1)/2)
- Taylor expansion: (1/2)[1 - d(m-1)/2 + (d(m-1)/2)² - ...]
- Result: β = 1/2 - d(m-1)/4 + d²(m-1)²/8 - ...

### 3. False Gevrey-1 Claim for PME (Section 6)
**Error:** Claimed the PME expansion has "Gevrey-1 structure" and is asymptotic
**Correction:** Completely rewrote subsection 6.3 to clarify:
- The Taylor series converges (it's a smooth function for m > 0)
- The PME has no loop corrections or instanton effects
- m is not a coupling constant in the QFT sense
- Anomalous dimensions arise from nonlinear dynamics, not quantum effects
- This demonstrates anomalous dimensions are general, not unique to QFT

## Conceptual Clarifications

### 4. Explicit Acknowledgment of β_λ Correction (Box 4.3)
**Added:** Explicit note acknowledging the correction from Chapter 2:
- Original (incorrect): β_λ = 2λ
- Corrected: β_λ = 3λ
- Reason: Under dilation x → bx in d=1, λ → b³λ
- Note states this correction propagates through all subsequent calculations

### 5. "More Relevant" Terminology (Box 4.3)
**Added:** Clarification of technical jargon:
- Both r and λ are relevant (Δ > 0)
- λ is "more relevant" means Δ_λ = 3 > Δ_r = 2
- Perturbations in λ grow faster than perturbations in r
- λ dominates the RG flow at large scales

### 6. Box 4.2 Honesty About Toy Model
**Changed title:** "Anatomy of a Non-Perturbative Fixed Point" → "Toy Model for Non-Perturbative Fixed Points"
**Added upfront disclaimer:**
- "Pedagogical goal: To illustrate the structure... This is NOT a derivation from first principles"
- Explained why β^(1) has the form g²e^(-S₀/g)
- Added explicit "What's missing" section listing 5 steps needed for rigorous treatment
- Acknowledges the toy model "assumes a form designed to have the desired solution"

### 7. Seiberg Duality Discussion (Section 2.2)
**Complete rewrite** to address major conceptual error:
- **Old claim:** Seiberg duality reveals fixed points invisible to perturbation theory
- **Corrected:** Seiberg duality relates strong/weak coupling descriptions of the SAME fixed point
- Clarified that fixed points accessible perturbatively in dual variables still need non-perturbative methods in original variables
- Matrix models: large-N expansion is itself perturbative (in 1/N)
- Lattice QCD: evidence exists but connection to transseries remains open
- **Added honest conclusion:** "Establishing genuine Type 2 non-perturbative fixed points... remains an outstanding challenge"

### 8. Stokes Constant Universality (Section 4.3)
**Changed from assertion to conjecture:**
- **Old:** "The Stokes constants are universal" (stated as fact)
- **New:** "Conjecture on Stokes constant universality"
- Added explicit list of requirements for the conjecture to hold
- Acknowledged this "remains to be rigorously established"
- Noted it's "an active area of research in resurgence theory"
- Adopted as "working hypothesis" rather than proven fact

### 9. Renormalon vs Diagram Counting (Box 4.6)
**Added detailed clarification:**
- Distinguished two sources of factorial growth:
  1. **Combinatorial:** Number of diagrams grows factorially
  2. **Renormalons (dominant):** RG running accumulates as ∫dμ β(g)^k ~ k!
- Explained UV vs IR renormalons
- Clarified that renormalons are typically the leading source of divergence

## Overall Impact

### What Was Fixed:
1. **All numerical errors corrected** (Wilson-Fisher, PME expansion)
2. **False mathematical claims removed** (Gevrey-1 for PME)
3. **Honest acknowledgment of limitations** (toy model, non-perturbative fixed points)
4. **Technical jargon clarified** ("more relevant", renormalons)
5. **Speculative claims downgraded to conjectures** (Stokes universality)
6. **Major conceptual errors corrected** (Seiberg duality)

### Best Practice Maintained:
- Box 4.5 (Barenblatt exponents) remains unchanged—it was already excellent
- All concrete calculations are now correct
- Claims about "deep structure" are now appropriately qualified
- The chapter distinguishes clearly between:
  - What we can calculate (PME exponents, Wilson-Fisher fixed points)
  - What we're demonstrating pedagogically (Box 4.2 toy model)
  - What remains conjectural (Type 2 non-perturbative fixed points, Stokes universality)

### Structure Preserved:
- All section numbering unchanged
- All boxes retained (with corrections)
- Overall narrative flow maintained
- Summary section accurate with corrections

## Files Modified:
- `/Users/mrisyadhasyim/GitRepos/rg_ideas/chapters/ch04_fixed_points.tex`

## Verification:
- No LaTeX compilation errors
- All mathematical formulas checked
- All claims now have appropriate qualification
- Honest about what is known vs conjectured vs pedagogical




