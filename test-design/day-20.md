# Day 20 — TC01: Create a leave request with text content

## 1. Test summary

| Field | Details |
|---|---|
| Feature | Xin phép nghỉ học — tạo đơn xin phép |
| Page | `https://glyphutrung.top/index.php#/leave` |
| Test case | `TC01 — Create a leave request with text content` |
| Test type | Positive / Functional UI test |
| Test date | 17/10/2026 (theo thời gian hiển thị trên thẻ đơn) |
| Environment / permission | Người kiểm thử xác nhận sử dụng tài khoản kiểm thử và được phép tạo đơn trong môi trường này |
| Execution status | **Executed — Partially verified** |
| Overall result | **PARTIAL PASS** — R2, R3, R4 đạt; R1 chưa xác minh được |

> Privacy note: Các ảnh chụp màn hình ban đầu có thông tin nhận dạng học sinh và tài khoản. Trước khi đưa bằng chứng lên GitHub công khai, cần tạo bản đã che tên/mã học sinh và thông tin cá nhân không cần thiết. Không đưa ảnh gốc chưa che dữ liệu lên repository công khai.

## 2. Scope and requirements

- **R1 — Data type:** Nội dung xin phép được lưu dưới kiểu dữ liệu `String`.
- **R2 — Create request:** Sau khi nộp thành công, một thẻ xin phép mới xuất hiện trong mục **Duyệt đơn / Chờ duyệt**.
- **R3 — Content match:** Thẻ hiển thị nội dung tương ứng với nội dung đã nhập.
- **R4 — Request details:** Thẻ hiển thị đúng họ tên, tên thánh, lớp, ngày xin và chương trình/sự kiện đã chọn.

R4 được bổ sung từ yêu cầu nghiệp vụ đã được người dùng xác nhận. Không đánh giá quy tắc rằng sự kiện phải diễn ra đúng ngày xin phép, vì quy tắc quan hệ ngày này chưa được xác nhận riêng.

## 3. Preconditions

1. Đăng nhập bằng tài khoản kiểm thử được phép sử dụng chức năng Xin phép.
2. Chọn hồ sơ học sinh kiểm thử phù hợp.
3. Trước khi nộp, kiểm tra và ghi nhận danh sách Chờ duyệt đang trống đối với lần kiểm thử này.
4. Không nhấn **Duyệt** hoặc **Từ chối** trong phạm vi TC01.

## 4. Test data

| Field | Value used |
|---|---|
| Student | Hồ sơ học sinh kiểm thử — thông tin nhận dạng cần được ẩn trong bản công khai |
| Class | `Rước Lễ 1A` (theo giao diện tại thời điểm kiểm thử) |
| Leave date | `18/10/2026` |
| Program / event | `Thánh Lễ Thiếu Nhi (06:00)` |
| Leave reason | `[QA-D20-TC01] Em xin phép nghỉ học trong ngày kiểm thử vì lý do giả định.` |

The marker `[QA-D20-TC01]` was used to identify the request in the approval list.

## 5. Test steps and actual results

| Step | Action | Expected result | Actual result | Status |
|---|---|---|---|---|
| 1 | Open the Xin phép page and select the test student. | The intended test student can be selected. | The student profile was displayed and selected for the test. | PASS — observed |
| 2 | Open **Duyệt đơn / Chờ duyệt** before submission. | No existing request for this test run; initial state is recorded. | The list displayed **“Không có đơn nào.”** | PASS — screenshot evidence supplied in chat |
| 3 | Open the request form and enter the test data. | The form displays the selected student, date, program and test reason before submission. | The pre-submit form displayed the student details, date `18/10/2026`, program `Thánh Lễ Thiếu Nhi (06:00)` and the marker/text `[QA-D20-TC01] ...`. | PASS — screenshot evidence supplied in chat |
| 4 | Click **Nộp đơn** once. | Submission completes and the request is created. | The student/request view showed **CHỜ DUYỆT** and the Duyệt đơn tab displayed a count of `1`. | PASS — screenshot evidence supplied in chat |
| 5 | Open **Duyệt đơn / Chờ duyệt** and inspect the new card. | A new card is shown with the submitted content and the required request details. | One card appeared with status **CHỜ DUYỆT**. The card displayed the `[QA-D20-TC01]` text, student name/saint name, class, date and selected program. The visible content corresponded to the pre-submit form. | PASS — screenshot evidence supplied in chat |
| 6 | Refresh the browser page once and inspect the request again. | The submitted card remains present with the same content and no unexpected duplicate is created. | The tester reported that the card remained and the content was unchanged after refresh. A separate after-refresh screenshot has not yet been supplied in this record. | PASS — tester-observed; screenshot pending |

## 6. Requirement results

| Requirement | Result | Reason |
|---|---|---|
| **R1 — Data type is String** | **NOT VERIFIED** | The available evidence is from the UI. It confirms text display but does not prove the underlying request payload or stored value type. Network/API/database inspection was not available in this test. Do not mark R1 as PASS or FAIL based on the screenshots. |
| **R2 — New request card appears** | **PASS** | The approval list was empty before submission; after submission, a pending request card appeared and the Duyệt đơn count changed to `1`. |
| **R3 — Submitted content matches the card** | **PASS** | The card displayed the unique marker `[QA-D20-TC01]` and the submitted reason text. |
| **R4 — Required details display correctly** | **PASS** | The visible card displayed the student/saint name, class, requested date and selected program/event corresponding to the pre-submit form. |
| **Refresh persistence check** | **PASS — tester-observed** | The tester reported that the card and content remained after a browser refresh. The screenshot for this step is pending. |

## 7. Evidence register

The screenshots below were provided in the conversation. Before adding them to GitHub, make redacted copies and save them using these suggested names. These paths are a naming plan, not a claim that the files have already been added to the repository.

| Evidence ID | Suggested repository path | What it supports | Evidence state |
|---|---|---|---|
| E1 | `test-design/evidence/day-20-01-baseline-student.png` | Selected test student / initial state | Source screenshot supplied; public copy must be redacted and saved |
| E2 | `test-design/evidence/day-20-02-empty-approval-list.png` | Approval list empty before submission | Source screenshot supplied; public copy must be redacted and saved |
| E3 | `test-design/evidence/day-20-03-before-submit-form.png` | Test input and request details before submission | Source screenshot supplied; public copy must be redacted and saved |
| E4 | `test-design/evidence/day-20-04-after-submit-student-status.png` | Status becomes **CHỜ DUYỆT** and count becomes `1` | Source screenshot supplied; public copy must be redacted and saved |
| E5 | `test-design/evidence/day-20-05-after-submit-approval-card.png` | New card, content and request details after submission | Source screenshot supplied; public copy must be redacted and saved |
| E6 | `test-design/evidence/day-20-06-after-refresh.png` | Card persists after browser refresh | Tester reported the result; separate screenshot not yet supplied |

## 8. Conclusion and limitations

**TC01 is partially passed, not a full PASS.** The UI evidence supports R2, R3 and R4. The tester also reported that the request remained after refresh. R1 remains **Not Verified**, because UI screenshots alone cannot confirm the underlying data type is `String`.

No defect is raised from the current observations: no mismatch has been observed in the visible request card. R1 is a verification limitation, not evidence that the system failed the requirement.

This test did not inspect Network requests, API responses or database values. It also did not approve or reject the request, and did not test unspecified validation rules, duplicate-submission behavior, or a rule requiring the event date to equal the leave date.

## 9. Final status

- [x] Test executed with an authorized test account/environment, per tester confirmation
- [x] New pending request card observed
- [x] Submitted content matched the visible card
- [x] Required request details observed on the card
- [x] Persistence after refresh reported by tester
- [ ] R1 data type `String` verified
- [ ] Redacted evidence copies saved to the repository
- [ ] Separate after-refresh screenshot added

**Overall: PARTIAL PASS — retain R1 as NOT VERIFIED.**
