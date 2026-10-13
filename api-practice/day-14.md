# Day 14 — Practical API Observation with Chrome DevTools

## 1. Objectives

* Observe HTTP requests and responses using browser DevTools Network.

* Distinguish document requests from static resources and JSON responses.

* Read HTTP status codes, request methods, and Content-Type headers.

* Inspect response bodies and identify JSON fields.

* Record observations without assuming an unverified root cause.

## 2. Environment

* Browser: Microsoft Edge DevTools.

* Tool: Network panel.

* Website observed: `https://glyphutrung.top/index.php`

* Demo API: `https://jsonplaceholder.typicode.com/posts/1`

## 3. Observations — Church Website

### Main document request

* Request URL: `https://glyphutrung.top/index.php`

* Method: `GET`

* Status: `200 OK`

* Content-Type: `text/html`

* Response and Preview: appeared blank in DevTools.

* Copy response: copied content appeared blank.

* Initiator: the displayed call stack referenced `sw.js` at line 99.

The cause of the blank response display was not established. This observation alone does not prove that the response body was empty or that the request was defective.

### Static image resource

* Resource: `icon-192.png`

* Status: `200`

* Content-Type: `image/png`

This identifies the response as PNG image data.

### Web application manifest

* Resource: `manifest.json`

* Content-Type: `application/json`

* Observed key: `name`

* Observed value: `GIA ĐÌNH GIÁO LÝ PHÚ TRUNG`

Other visible fields included `short_name`, `description`, `start_url`, `display`, `orientation`, `background_color`, `theme_color`, and `icons`.

The observed fields describe application configuration. A JSON Content-Type alone does not establish that a resource is a business API.

## 4. Observations — Demo API

Endpoint:

`https://jsonplaceholder.typicode.com/posts/1`

The browser displayed a JSON Object containing these fields:

* `userId`

* `id`

* `title`

* `body`

### Network observations

On the first reload:

* Status: `304 Not Modified`

* Type: `document`

After enabling Disable cache and reloading:

* Status: `200 OK`

* Type: `document`

* Displayed size: `514 B`

The Response Headers showed:

`Content-Type: application/json`

The Response tab displayed the same JSON Object as the browser page.

Opening the API URL directly in the browser explains why DevTools displayed the request Type as `document`; this does not contradict the JSON Content-Type.

## 5. Key Lessons

* Status codes and Content-Type provide different kinds of information.

* `200 OK` does not guarantee that data satisfies business requirements.

* `304 Not Modified` is a cache-related HTTP response, not automatically an error.

* `application/json` describes the declared response format; it does not by itself identify the resource's business purpose.

* A JSON manifest can contain application configuration rather than business records.

* Network observations should be recorded separately from assumptions and root-cause hypotheses.

## 6. Limitations

* The church website request with a blank Response display remains unexplained.

* The demo API was opened directly in the browser; no Postman test was performed.

* No response schema validation or automated API test was performed.

* This exercise demonstrates introductory observation skills and does not establish mastery of API Testing.

## 7. Completion Record

* Day: 14

* Topic: Practical API Observation with Chrome DevTools

* Evidence: `api-practice/day-14.md`

* Git commit: Pending

* Git push: Pending
