# Day 17 — Test Design Fundamentals: Equivalence Partitioning

## 1. Requirement

The product quantity field accepts an integer from 1 to 10 inclusive.

## 2. Equivalence Classes

| Class | Input Condition | Classification | Representative Value |
|---|---|---|---|
| EC1 | Integer less than 1 | Invalid | 0 |
| EC2 | Integer from 1 to 10 inclusive | Valid | 1 |
| EC3 | Integer greater than 10 | Invalid | 11 |
| EC4 | Numeric value that is not an integer | Invalid | 2.11 |

## 3. Test Cases and Expected Results

| Test Case | Input | Expected Result |
|---|---:|---|
| TC01 | 0 | The system rejects the value and reports a validation error. |
| TC02 | 1 | The system accepts the value without a validation error. |
| TC03 | 11 | The system rejects the value and reports a validation error. |
| TC04 | 2.11 | The system rejects the value because it is not an integer. |

## 4. What I Learned

- Equivalence Partitioning divides input data into groups expected to produce the same type of system behavior.
- A representative value can be selected from each equivalence class.
- Expected Result should describe the expected system behavior for the specific input.
- Invalid input can violate either the allowed value range or the required data type.

## 5. Practice Scope and Limitations

This was a test design exercise based on a stated requirement. The test cases were designed but were not executed against a real application.

The exact wording of validation error messages was not specified in the requirement.