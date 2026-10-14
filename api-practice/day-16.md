# Day 16 — Postman Fundamentals: GET Request with Query Parameters

## 1. Objectives

- Understand query parameters at an introductory level.

- Distinguish the URL path from the query parameter.

- Send GET requests with different query parameter values.

- Inspect status codes and JSON response bodies.

- Compare actual response data with the requested filter.

## 2. Environment

- Tool: Postman.

- Demo API: JSONPlaceholder.

- HTTP Method: GET.

- Base URL: `https://jsonplaceholder.typicode.com/posts`

## 3. Query Parameter Structure

Example request URL:

`https://jsonplaceholder.typicode.com/posts?userId=1`

- Path: `/posts`

- Query parameter: `userId=1`

- Parameter key: `userId`

- Parameter value: `1`

The query parameter requests posts filtered by `userId` equal to `1`.

## 4. Practice 1 — GET with userId=1

Configured the request in Postman:

- Method: `GET`

- Base URL: `https://jsonplaceholder.typicode.com/posts`

- Query parameter: `userId=1`

Observed results:

- Status Code: `200 OK`

- Response Body: JSON Array.

- The returned posts had `userId` equal to `1`.

- The observed post IDs ranged from `1` to `10`.

## 5. Practice 2 — GET with userId=2

Changed the query parameter value from `1` to `2` and sent the request again.

Observed results:

- Status Code: `200 OK`

- The returned posts had `userId` equal to `2`.

- The observed post IDs ranged from `11` to `20`.

- The returned data differed from the previous response.

These observations show how changing a query parameter can change the data returned by an API.

## 6. Path and Query Parameter Review

Example:

`https://jsonplaceholder.typicode.com/posts?userId=3`

- Path: `/posts`

- Query parameter: `userId=3`

- Parameter value: `3`

- Intended filter: posts whose `userId` equals `3`.

This example was used as a reasoning exercise; it was not recorded as a separately executed request.

## 7. Key Lessons

- The path identifies the resource path.

- The `?` character separates the path from the query string.

- A query parameter consists of a parameter key and value.

- A GET request can use query parameters to filter returned data.

- A `200 OK` response does not by itself prove that all requirements have been satisfied.

- Test conclusions should be based on observed response data and the expected result.

## 8. Scope and Limitations

- Practiced basic GET requests with query parameters.

- No POST, PUT, PATCH, or DELETE request was performed.

- No response schema validation was performed.

- No Collection, Environment, `pm.test`, authentication testing, or API automation was performed.

- This exercise demonstrates introductory practice and does not establish mastery of API Testing.

## 9. Completion Record

- Day: 16

- Topic: Postman Fundamentals — GET Request with Query Parameters

- Evidence file: `api-practice/day-16.md`

- Git commit: Pending

- Git push: Pending
