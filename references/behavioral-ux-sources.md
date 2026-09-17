# Behavioral UX sources — what to trust

Not loaded by any skill. Read when a UX recommendation is about to lean on a named
psychological effect, or when evaluating a behavioral-design source.

## growth.design

Reviewed 2026-09-17: the `/psychology` index, the `/psychology/cheatsheet` print view, and
the `/case-studies` listing. Dan Benoni & Louis-Xavier Lavallée. A newsletter and paid
masterclass business publishing illustrated product teardowns plus a 106-entry principle
library in four categories (Information 29, Meaning 32, Time 28, Memory 17).

**45 of the 106 entries are written. 61 say "Coming Soon."** The cheatsheet reprints all 106
one-liners regardless, so the printable artifact implies a depth the site does not have.
Nothing on either page carries a citation, an effect size, or the conditions under which an
effect holds. Treat the list as an index of terms to go and verify — never as the
verification.

## The list is four different kinds of thing

Sorting it is the only way to use it, because the four carry completely different weight.

**Craft vocabulary, not biases.** Progressive Disclosure, Visual Hierarchy, Signifiers,
Feedback Loop, Feedforward, Discoverability, Visual Anchors, Contrast, Juxtaposition,
Skeuomorphism, Aha Moment, Delighters, Internal/External Trigger, Investment Loops, Provide
Exit Points, Sensory Appeal. These are design practice with names attached. They are fine to
use and prove nothing — calling one a "cognitive bias" adds authority it did not earn.

**Perceptual and motor findings that hold.** Fitts's Law, the Gestalt laws (Proximity,
Similarity, Prägnanz), Von Restorff, Serial Position, Chunking, Recognition Over Recall,
Picture Superiority, Spacing Effect. Robust, replicated, safe to lean on.

**Biases about the builder, not the user.** Confirmation Bias, Curse of Knowledge,
Survivorship Bias, False Consensus, Self-Serving Bias, Hindsight Bias, Planning Fallacy,
Law of the Instrument, Observer-Expectancy, Survey Bias, Hawthorne, Dunning-Kruger. These
belong in how research and estimation are run — not in interface recommendations. The most
useful third of the list, and the one most often skipped.

**Persuasion levers under legal constraint.** Scarcity, Social Proof, Decoy, Anchoring,
Framing, Loss Aversion, Sunk Cost, Commitment & Consistency, Variable Reward, Reciprocity,
Bandwagon, Nudge, Centre-Stage. Live regulatory surface — see below.

## Entries that do not survive checking

Verified 2026-09-17.

**Priming (#3), written and published on the site.** Its one-liner — "previous stimuli
influence users' decision" — is *social/behavioral* priming, the replication crisis's central
casualty. Doyen et al. (2012) failed to replicate Bargh's elderly-walking study; Kahneman's
2012 open letter called the field a coming "train wreck." Semantic, associative and
repetition priming replicate fine and are a different phenomenon. Do not justify a design
with behavioral priming.

**Decision Fatigue (#68).** Ego depletion's multi-lab registered replication (Hagger et al.
2016) found d = 0.04, CI [−0.07, 0.15]. The "hungry judges" field result is confounded by
non-random case scheduling and reproduces as a statistical artifact. Unestablished.

**Backfire Effect (#83).** Wood & Porter failed to find it across ~10,000 subjects; it is
described in the literature as elusive. Do not design around it.

**Dunning-Kruger (#71), written and published.** Contested as a measurement artifact of
regressing X against Y−X; reanalyses find a real but smaller, roughly linear effect. Weaker
than the popular claim, not dead.

**Hick's Law (#1), written and published.** Popularly "fewer options per screen." Landauer &
Nachbar found the opposite for ordered, scannable lists — breadth beats depth, because the
user binary-searches. Liu et al. (CHI 2020) argue the law's design contribution is conceptual,
not experimental. The real rule: unsorted or unfamiliar list → linear search, splitting helps;
sorted or familiar list → splitting adds clicks and buys nothing.

**Miller's Law / 7±2 (#45).** Not verified this pass, flagged from general knowledge: Miller's
figure was partly rhetorical and working-memory capacity is now generally put nearer four
chunks (Cowan). Check before citing.

**The bookshelf.** Cialdini, Eyal, Weinberg, Benson, Ariely — popular press, not primary
literature. Ariely co-authored the retracted 2012 signing-at-the-top honesty paper; Harvard
found co-author Francesca Gino committed research misconduct "intentionally, knowingly, or
recklessly," and she was fired in May 2025. Ariely was not himself found to have committed
misconduct, but the flagship result is withdrawn.

## The case studies

53 illustrated teardowns of real products, tagged Onboarding / Retention / Revenue. A
recurring ethics line runs through them — Scarcity used ethically, GoDaddy checkout, Signal
monetization, Brave vs Chrome, Adobe offboarding, Temu's "casino-like" UX, TikTok's feed. The
site is not naively pro-manipulation, and the teardown format itself is a good model for
presenting a critique.

Their evidentiary status is still n = 1 observation from outside. Where one cites a number —
"Blinkist +23%", "LinkedIn +500% opt-in" — the authors did not run that experiment and the
provenance is not given. Read them for the walkthrough, never as the basis for a projected
number in a client recommendation.

## The persuasion subset is regulated

This is the part that matters for storefront, trial, subscription and checkout work, and the
reason the levers above are not a free menu. Verified 2026-09-17:

- **EU DSA Article 25** prohibits interfaces that deceive or manipulate users, explicitly
  covering false urgency and obstructed cancellation. Applies to EU users regardless of where
  the business sits.
- **US FTC:** the Click-to-Cancel rule was vacated 8 July 2025 on procedural grounds, but the
  FTC retains ROSCA and FTC Act authority over negative-option and cancellation practices, a
  replacement rulemaking has restarted, and state auto-renewal laws are in force now. *FTC v.
  Uber* (filed April 2025, amended December 2025, FTC plus 21 states) is live over enrollment
  without express informed consent and a misrepresented "cancel anytime."

Concretely: a countdown that resets on reload, a stock count not backed by inventory, a
pre-checked upsell, a cancellation path longer than the signup path, or a free trial that
charges without clear prior consent are legal exposure for the client, not merely tasteless.
Say so in those words when one appears in an audit.

## The standing rule

A named effect is not an argument. The argument is the observed flow, the role, and the cost
to the user. Where a principle genuinely carries a recommendation, cite the primary source and
name the condition under which it holds. Applied guidance belongs in
[loop-interface-audit/core/principles.md](../skills/loop-interface-audit/core/principles.md);
this file only records provenance.
