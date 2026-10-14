# Day 15 — Postman Fundamentals: Basic GET Request

## 1. Objectives

- Send a basic GET request using Postman.

- Read the HTTP status code and response headers.

- Inspect a JSON response body.

- Compare the response received in Postman with the response observed in Chrome.

- Understand why a successful HTTP status does not guarantee that response data meets every requirement.

## 2. Environment

- Tool: Postman.

- Demo API: JSONPlaceholder.

- Request URL: `https://jsonplaceholder.typicode.com/posts/1`

- HTTP Method: `GET`

## 3. Request Execution

Configured the request in Postman:

- Method: `GET`

- URL: `https://jsonplaceholder.typicode.com/posts/1`

Sent the request using the Send button.

Observed results:

- Status Code: `200 OK`

- Response Body: JSON was displayed.

- Content-Type: `application/json`

## 4. Response Body Inspection

Identified the following JSON fields:

- `userId`

- `id`

- `title`

- `body`

Practice results:

- Identified `id` as a Number with the observed value `1`.

- Identified `title` as a String.

- Confirmed that the Response Body contained a JSON object.

## 5. Comparison with Chrome

Compared the Postman Response Body with the JSON displayed in Chrome for the same URL.

The observed data matched between the two tools.

This comparison helped connect browser-based HTTP observation from Day 14 with sending a request directly through an API client.

## 6. QA Reasoning Exercise

Considered a hypothetical response where the HTTP status is `200 OK`, but the JSON contains `userId` and `id` while `title` and `body` are missing.

Conclusion:

- `200 OK` alone is insufficient to determine whether the response meets all requirements.

- Missing fields do not automatically establish a bug.

- The expected fields must be checked against the API specification or applicable business requirements.

- The observed response should be verified before drawing a conclusion.

This was a reasoning exercise; the missing-field scenario was not recorded as an actual defect in the demo API.

## 7. Key Lessons

- A GET request is commonly used to retrieve a resource.

- HTTP status and response content answer different questions.

- `Content-Type: application/json` identifies the declared response format.

- JSON fields and values can be inspected directly in Postman.

- A successful HTTP response does not guarantee that all business requirements are satisfied.

- Test conclusions should be based on expected results, observed data, and sufficient evidence.

## 8. Scope and Limitations

- Practiced one basic GET request.

- No POST, PUT, PATCH, or DELETE request was performed.

- No response schema validation was performed.

- No Postman Collection, Environment, `pm.test`, authentication testing, or API automation was performed.

- This session demonstrates introductory practice and does not establish mastery of API Testing.

## 9. Completion Record

- Day: 15

- Topic: Postman Fundamentals — Basic GET Request

- Evidence file: `api-practice/day-15.md`

- Git commit: Pending

- Git push: Pending
