# Day 21 — Project 1 Test Case Coverage Inventory

**Roadmap phase:** Giai đoạn 1 — Tháng 0–3
**Project:** Project 1 — Basic Website Testing / Level 1 (Form & Data Testing)
**Prepared:** 17/10/2026
**Purpose:** Consolidate the three test cases designed or executed for the student list/search and leave-request functions, while separating observed evidence from unverified behavior.

## 1. Coverage inventory

| Test Case ID | Function / scenario | Execution status | Evidence conclusion / gap | Source / reference |
|---|---|---|---|---|
| **D19-TC01** | Student list/search — valid String | **Executed — partially evidenced** | Screenshot `test-design/day-19-tc01-search-result.png` supports that the search result and student record were displayed in the UI at the time of capture. Save/persistence, refresh, and re-login steps were reported by the tester, but the available screenshot does not independently prove all of those steps. | Report: `test-design/day-19.md` (commit `2dfcf59`); screenshot: `test-design/day-19-tc01-search-result.png` (commit `e8c8fbf`) |
| **D19-TC02** | Student name — JSON Number | **Designed — not executed** | There is no execution result to conclude whether the system accepts or rejects a JSON Number. A permitted method is needed to submit a value whose actual JSON type is Number; typing digits into an ordinary text input does not prove the request sends a Number. | Test design: `test-design/day-19.md` (commit `2dfcf59`) |
| **D20-TC01** | Create leave request | **Executed — Partial Pass** | UI evidence supports that a new pending request card appeared, its displayed content matched the submitted content, and the confirmed required details were displayed correctly. The tester reported that the card and content remained after refresh, but a separate after-refresh screenshot has not been supplied. R1 — stored data type is `String` — remains **NOT VERIFIED** because no suitable request, API, or stored-data type evidence was inspected. | Report: `test-design/day-20.md` (commit `3d72c29`); separate after-refresh image pending |

## 2. Day 20 requirement status reference

| Requirement / check | Status | Evidence boundary |
|---|---|---|
| R1 — leave-request content is stored as `String` | **NOT VERIFIED** | UI screenshots confirm visible text only; they do not prove the underlying data type. |
| R2 — a new pending request card appears | **PASS** | Before/after UI evidence supports the new-card result. |
| R3 — displayed content matches submitted content | **PASS** | The visible card content and test marker match the submitted content. |
| R4 — confirmed request details display correctly | **PASS** | The card visibly displays the required student/saint name, class, requested date, and selected program/event. |
| Persistence after refresh | **PASS — tester-reported** | The tester confirmed persistence, but a separate screenshot is still pending. |
| Overall D20-TC01 | **PARTIAL PASS** | Do not mark the whole case PASS while R1 remains unverified. |

## 3. Current gaps and safe next actions

1. **Day 19:** Keep UI-visible evidence separate from steps that were reported but not independently evidenced.
2. **D19-TC02:** Do not report PASS or FAIL until it has been executed using a permitted method that sends a JSON Number.
3. **Day 20:** Keep R1 as `NOT VERIFIED`; this is a verification limitation, not evidence of a defect. Add the after-refresh screenshot only if it is available.
4. **Public portfolio:** Redact student-identifying information from screenshots before placing them in a public repository. The paths and commit references above identify existing report artifacts; they do not mean every suggested screenshot has been committed.
5. **Live test data:** The Day 20 request was reported to remain in the pending approval list. Do not submit a duplicate or approve/reject the existing request as part of routine continuation. Any state-changing cleanup must follow a known authorized procedure.
6. **Requirements discipline:** Do not invent Expected Results for unconfirmed rules such as blank content, maximum length, special characters, duplicate submission, or a same-day relationship between event date and leave date.

## 4. Inventory status

This inventory consolidates the currently known test-case coverage for two functions. It does **not** claim mastery of Test Design, does not establish a defect, and does not replace the individual test reports.
