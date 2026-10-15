# Day 19 — Applying Test Design to Student Records

## 1. Test Scope

**Application:** `https://glyphutrung.top/index.php#/students`

**Feature:** Student list/search under `/students`

**Test focus:** Input validation, student record visibility, and evidence-based test reporting.

The test data used for the portfolio is fictitious: `Gioan Trần Minh An`.

## 2. Requirement

Based on the requirement provided for this exercise:

- `studentName` must be a JSON String.
- A valid String input should be accepted without a validation error.
- After valid input is submitted, the student record should be saved and the student card should be created.
- A JSON Number supplied in place of `studentName` should be rejected with a validation error.

**Scope clarification:** The requirement above is the specification reported by the learner. The actual server-side validation behavior has not been independently verified for the Number test case.

## 3. Test Case TC01 — Valid String Input

**Input**

```json
{
  "studentName": "Gioan Trần Minh An"
}
```

### Expected Result

1. The system accepts the valid String input without a validation error.
2. The student record is saved successfully.
3. The saved record remains available after a page refresh, search, and logout/login.
4. The student card is created, and the displayed name matches the submitted test data.

### Actual Result

The supplied screenshot shows a student record in the list/search view with:

- Saint name: `GIOAN`
- Full name: `TRẦN MINH AN`
- Status: `ĐANG SINH HOẠT`

The learner also reported checking record persistence and student-card creation during testing.

### Status

**Partially evidenced.**

The screenshot directly supports the record's visibility in the list/search view at the time of capture. It does not independently demonstrate every expected result, such as persistence after logout/login.

### Evidence

- Screenshot: `test-design/day-19-tc01-search-result.png`
- Evidence supported directly: student record visible in the list/search view.
- Additional verification: persistence and card creation were reported by the learner, but separate screenshots are not currently attached for those steps.

## 4. Test Case TC02 — Number Input

**Input example**

```json
{
  "studentName": 1
}
```

### Expected Result

1. The system rejects the input because `studentName` is a Number instead of a String.
2. A validation error is returned or displayed.
3. The invalid input is not saved as a student record.
4. No student card is created from the rejected input.

### Actual Result

Not executed.

### Status

**Designed — not executed.**

The Number payload is a test design example. Typing a number into a normal text field does not necessarily produce a JSON Number; the actual request type would need to be verified before this case could be tested.

## 5. What I Learned

- Equivalence Partitioning can classify inputs by data type when the requirement specifies a type constraint.
- A string containing only digits is still a String when represented with JSON quotation marks.
- A JSON Number and a JSON String are different data types.
- Validation, data persistence, and student-card creation are separate behaviors that may need separate verification.
- Actual Result must describe observed behavior rather than repeat Expected Result.
- Evidence should support the specific conclusion being reported.

## 6. Evidence Limitations and Privacy

- TC01 has screenshot evidence for the visible list/search result.
- The current screenshot does not independently prove every persistence or student-card behavior.
- TC02 has not been executed.
- Only fictitious test data should be included in the public portfolio.
- Personal information belonging to real students or other users must not be published.

## 7. Current Progress

- Day 17: Equivalence Partitioning practice completed.
- Day 18: Boundary Value Analysis practice completed.
- Day 19: Applied test-design reasoning to the student list/search feature.
- TC01: List/search visibility evidenced; other reported behaviors require separate supporting evidence for independent review.
- TC02: Designed but not executed.
- Evidence file: `test-design/day-19-tc01-search-result.png`
- Day 19 report: `test-design/day-19.md` — saved and reviewed; pending Git commit and push.