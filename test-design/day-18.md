# Day 18 — Test Design Fundamentals: Boundary Value Analysis

## 1. Requirement

The product quantity field accepts an integer from 1 to 10 inclusive.

## 2. Boundary Values

| Boundary | Position | Representative Value | Expected Classification |
|---|---|---:|---|
| Minimum | Just below minimum | 0 | Invalid |
| Minimum | At minimum | 1 | Valid |
| Minimum | Just above minimum | 2 | Valid |
| Maximum | Just below maximum | 9 | Valid |
| Maximum | At maximum | 10 | Valid |
| Maximum | Just above maximum | 11 | Invalid |

## 3. Test Cases and Expected Results

| Test Case | Input | Expected Result |
|---|---:|---|
| TC01 | 0 | The system rejects the value during validation. |
| TC02 | 1 | The system accepts the value without a validation error. |
| TC03 | 2 | The system accepts the value without a validation error. |
| TC04 | 9 | The system accepts the value without a validation error. |
| TC05 | 10 | The system accepts the value without a validation error. |
| TC06 | 11 | The system rejects the value during validation. |

## 4. What I Learned

- Boundary Value Analysis focuses on values at and around the boundaries of an allowed range.
- For an integer range from 1 to 10 inclusive, the six selected values are 0, 1, 2, 9, 10, and 11.
- The minimum and maximum values are valid because the requirement includes both endpoints.
- Expected Results should describe the behavior expected from the requirement.
- Equivalence Partitioning and Boundary Value Analysis provide different but complementary perspectives for test design.

## 5. Practice Scope and Limitations

This exercise was based on a stated requirement. The six test cases were designed but were not executed against a real application.

The actual behavior of an application has not been verified. The exact wording of validation error messages was not specified in the requirement.