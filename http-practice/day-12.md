# Day 12 — HTTP Methods & Status Codes



## 1. Learning Objectives



- Understand the common purposes of GET and POST.

- Recognize common HTTP status codes.

- Interpret request-response behavior from a Technical QA perspective.

- Distinguish HTTP response errors from network connection failures.



## 2. HTTP Methods



### GET



Commonly used to retrieve resources or data from a server.



Example:



`GET /api/events`



### POST



Commonly used to send data to a server for processing, often to create a resource.



Example:



`POST /api/register`



Note: The actual behavior depends on the API design.



## 3. Common HTTP Status Codes



- **200 OK:** The request succeeded according to HTTP semantics.

- **400 Bad Request:** The request or its input is invalid.

- **401 Unauthorized:** Valid authentication credentials are missing or not accepted.

- **403 Forbidden:** The request is understood, but access is not permitted.

- **404 Not Found:** The requested resource was not found.

- **500 Internal Server Error:** The server encountered an unexpected condition while processing the request.



## 4. Practice Scenarios



### Scenario 1 — Successful Response, Unexpected Data



An API returns `200 OK`, but the response body is empty even though three events are expected in the test environment.



**Conclusion:**



The status code indicates HTTP-level success, but the actual data may not match the expected result. Further investigation is required before concluding the cause.



### Scenario 2 — Invalid Input



A registration request contains an email address that violates the API's input validation rules.



Expected status code for this exercise: `400 Bad Request`.



### Scenario 3 — Authentication and Authorization



A user has logged in successfully but does not have permission to access the administration page.



Expected status code: `403 Forbidden`.



**Distinction:**



- `401` relates to authentication.

- `403` relates to permission to perform the requested action.



### Scenario 4 — Resource Not Found



A request asks for event ID 999, but that event does not exist in the test environment.



A `404 Not Found` response may be appropriate. Whether this is a bug depends on the expected result and the test conditions.



### Scenario 5 — Internal Server Error



A server encounters an unexpected condition while processing a request and returns `500 Internal Server Error`.



A `500` response is different from a network connection failure. The response code alone does not identify the root cause.



## 5. Technical QA Lessons



- A successful HTTP status does not guarantee that business data is correct.

- Compare actual results with expected results.

- Do not conclude that every `404` is a bug.

- Distinguish HTTP error responses from network-level failures.

- Record the endpoint, HTTP method, request data, status code, response body, environment, and reproduction steps when investigating a potential defect.

- Do not assume the root cause from a status code alone.



## 6. Current Learning Gap



Further practice is needed to distinguish HTTP error responses from network-level failures in Chrome DevTools.


