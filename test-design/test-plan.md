# Project 1 — Basic Website Testing

## Test Plan: Level 1 — Form \& Data Testing

**Status:** Draft for Project 1
**Scope basis:** Confirmed requirements and test evidence recorded in `test-design/day-19.md`, `test-design/day-20.md`, and `test-design/day-21-coverage-inventory.md`.

## 1\. Objective

Evaluate selected workflows related to student information and leave-request submission on the website. Compare actual behavior with confirmed requirements, record supporting evidence, and report a defect only when observed behavior violates a confirmed requirement.

## 2\. Scope

**In scope**

* **Student information — list/search:** Test the recorded student list/search workflow and review the displayed result against the test case.
* **Leave request:** Enter the agreed test data, submit the request in the authorized test context, and check the resulting card in the pending-approval list, including the confirmed details and submitted content.
* Review test-case design, actual results, evidence quality, and known limitations.

**Out of scope for the current plan**

* Deep API or database testing and any assertion about internal data types without suitable evidence.
* Approving or rejecting the existing test leave request, or submitting another copy as part of routine continuation.
* Unconfirmed validation rules, including blank input, maximum length, special characters, duplicate submission, or a rule tying the event date to the leave date.
* Any action outside the authorized testing scope.

## 3\. Test approach

Use **manual UI functional testing** for the cases currently in scope. For each case, record the precondition, test data, action, expected result, actual result, execution status, and evidence. Compare actual results with confirmed requirements. Mark a case PASS or FAIL only when the evidence supports that conclusion; otherwise record the limitation or use Not Verified as appropriate. Design a case separately from executing it—an unexecuted case has no actual result.

## 4\. Environment and permissions

* **Environment:** Website under test. The specific environment type (for example, staging or production) has not been confirmed; do not infer it.
* **Account and scope:** Use only the test account and actions the tester is authorized to use. The tester has confirmed permission to create the leave request used for Day 20.
* **Safety boundary:** Do not access other users' data, attempt unapproved API payload changes, or perform state-changing actions outside the approved test objective. The Day 20 request remains pending according to the latest observation; do not approve, reject, or resubmit it during routine continuation.

## 5\. Evidence and privacy

Maintain test reports and screenshots that support specific conclusions. Distinguish direct screenshot evidence from steps reported by the tester and from requirements that remain unverified. Before publishing evidence in the public GitHub repository, create redacted copies that hide student-identifying details and other unnecessary personal information. Do not publish unredacted source screenshots.

## 6\. Known limitations

* **D19-TC01 — student list/search:** Executed, but partially evidenced. The screenshot supports the visible result at capture time; reported save/refresh/re-login steps are not independently proved by that screenshot.
* **D19-TC02 — JSON Number:** Designed but not executed. No PASS/FAIL conclusion is available. Typing digits into a regular text input does not prove the request sends a JSON Number.
* **D20-TC01 — leave request:** Overall **PARTIAL PASS**. R2 (new card), R3 (content match), and R4 (confirmed details display) are PASS based on UI evidence. R1 (stored content is `String`) remains **NOT VERIFIED** because suitable request/API/database type evidence was not examined. Persistence after refresh was reported by the tester, but a separate screenshot is pending.
* No defect has been established from the recorded observations so far. Do not raise a bug solely because a requirement is not yet verified.

## 7\. Reporting and completion criteria

For any observed mismatch against a confirmed requirement, record reproducible steps, expected result, actual result, severity when assessable, and supporting evidence; use GitHub Issues for a quality bug report when an actual defect is found. This plan does not claim that all test cases have been executed or that all Project 1 outputs are complete. Review coverage and evidence gaps before declaring the project complete.

\---

**Related artifacts**

* `test-design/day-19.md`
* `test-design/day-20.md`
* `test-design/day-21-coverage-inventory.md`
