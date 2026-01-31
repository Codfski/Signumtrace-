# AI Research Project Template

Project Overview
✓ Project: [Project Name]
✓ Goal: [What you're trying to achieve]
✓ Timeline: [Start date] → [Target completion]
👤 Lead Researcher: [Your name]

---

Phase 1: Hypothesis & Setup

Task 1.1: Define Research Question
✓ Current state: [What's known in the field]
⟿ Gap: [What's unknown or unsolved]
▶ Research question: [Specific, testable question]
# Success criteria:
- Question is falsifiable
- Answerable with available resources
- Novel contribution to field
☑ Validation: 2 peer researchers review and approve
👤 Owner: [Name]
⏱️ Deadline: [Date]
🔗 Depends on: Literature review complete
🚩 Risk: Question too broad or ill-defined
⟿ ◉ If approved → Phase 2
   ◉ If rejected → refine and re-submit ↻

---

Task 1.2: Dataset Acquisition
✓ Current data: [What you have now]
⟿ Need: [What additional data required]
▶ Action: [Specific steps to acquire/create dataset]
⚙ Implementation:
import pandas as pd

def collect_data(source, filters):
    # Your data collection logic
    pass

dataset = collect_data(source="...", filters={...})
# Target metrics:
- Dataset size: [N samples]
- Quality: [Labeling accuracy / cleanliness criteria]
- Diversity: [Coverage of edge cases]
☑ Validation:
- Statistical analysis shows no obvious bias
- Sample manually reviewed (N=100)
👤 Owner: [Name]
⏱️ Deadline: [Date]
🔗 Depends on: IRB approval (if human subjects)
🚩 Risk: Data collection slow or expensive
⟿ ◉ If on track → proceed to model design
   ◉ If delayed → use synthetic/public datasets as MVP ↻

---

Phase 2: Model Development

Task 2.1: Baseline Implementation
✓ Current: No model exists
▶ Action: Implement simple baseline
⚙ Implementation:
from sklearn.linear_model import LogisticRegression

baseline = LogisticRegression()
baseline.fit(X_train, y_train)
baseline_score = baseline.score(X_test, y_test)
# Target: Establish baseline performance
- Metric: [Accuracy / F1 / Loss]
- Baseline score: [Expected value]
☑ Validation:
- Results reproducible across 3 runs
- Documented in notebook
👤 Owner: [Name]
⏱️ Deadline: [Date]
🔗 Depends on: Task 1.2 (dataset ready)
🚩 Risk: Even baseline fails (data quality issue?)
⟿ ◉ If baseline reasonable → proceed to advanced model
   ◉ If baseline terrible → revisit data quality ↻

---

Task 2.2: Advanced Model
✓ Baseline: [Score]
⟿ Target: [Improvement target, e.g., +10% accuracy]
▶ Action: Implement [Specific architecture]
⚙ Implementation:
import torch.nn as nn

class MyModel(nn.Module):
    def __init__(self):
        # Your architecture
        pass
    
    def forward(self, x):
        # Forward pass
        pass
# Target metrics:
- Performance: Baseline + [X%] improvement
- Efficiency: [Inference time / memory usage]
☑ Validation:
- Outperforms baseline on held-out test set
- Statistical significance test (p < 0.05)
👤 Owner: [Name]
⏱️ Deadline: [Date]
🔗 Depends on: Baseline established
🚩 Risk: Overfitting or marginal improvement only
⟿ ◉ If significant improvement → write paper
   ◉ If marginal → try alternative architecture ↻

---

Phase 3: Evaluation & Publication

Task 3.1: Paper Writing
✓ Results validated
▶ Action: Write paper for [Conference Name]
# Target:
- Submission by [Conference deadline]
- Clear, reproducible methodology
☑ Validation:
- 3 co-authors review and approve
- Meets conference formatting guidelines
👤 Owner: [Name]
⏱️ Deadline: [Date]
🚩 Risk: Writing takes longer than expected
⟿ ◉ If accepted → present at conference 🎉
   ◉ If rejected → revise and submit to next venue ↻

---
Template Metadata
✓ Template: AI Research Project (Standard)
✓ Version: 2.0
✓ Created: 2026-01
✓ License: MIT
