# Day 13 — REST API & JSON Fundamentals



## 1. Objectives



* Understand the basic concept of an API and an endpoint.

* Read basic JSON structures and identify data types.

* Interpret API response data.

* Compare actual response data with a business rule.

* Distinguish Expected Result, Actual Result, and Test Result.



## 2. Key Concepts



### API and Endpoint



An API allows one software application to request data or actions from another application according to defined rules.



Example endpoint (illustrative only):



```http

GET /api/events

```



`/api/events` is the endpoint path to which the client sends a request.



### JSON Structure and Data Types



* **Key:** The name of a field.

* **Value:** The data associated with a key.

* **Object:** A collection of key-value pairs, enclosed in `{}`.

* **Array:** An ordered collection of values, enclosed in `[]`.

* **String:** Text enclosed in double quotation marks.

* **Number:** A numeric value.

* **Boolean:** `true` or `false`.

* **Null:** Represents the absence of a specific value.



Example:



```json

{

   "event_id": 101,

   "event_name": "Youth Meeting",

   "is_open": true,

   "capacity": 50,

   "location": null

}

```



### Reading an Array of Objects



Example:



```json

[

   {

     "event_id": 101,

     "event_name": "Youth Meeting",

     "capacity": 50

   },

   {

     "event_id": 102,

     "event_name": "Volunteer Day",

     "capacity": 30

   }

]

```



The response is an Array containing two Objects. Each Object represents one event.



## 3. Practice Results



### Exercise 1 — Key and Value



* Identified `/api/events` as an endpoint path.

* Identified `capacity` as a key and `50` as a Number value.

* Distinguished the `location` key from its value, `"Ho Chi Minh City"`.



### Exercise 2 — JSON Data Types



* `event_id`: Number.

* `is_open`: Boolean.

* `location`: Null.

* `organizers`: Array containing three String values.



### Exercise 3 — Reading Multiple Objects



* Identified the response as an Array containing two Objects.

* Found that event `102` is `Volunteer Day`.

* Calculated the combined capacity: `50 + 30 = 80`.

* Verified that capacities of `50` and `30` satisfy the rule `capacity > 0`.



## 4. Business Rule Validation



Business rule:



`capacity > 0`



Example response:



```json

{

   "event_id": 103,

   "event_name": "Charity Fair",

   "capacity": 0

}

```



Test evaluation:



* **Expected Result:** The API should return a capacity greater than `0`.

* **Actual Result:** The response contains `"capacity": 0`.

* **Test Result:** Fail, because `0` does not satisfy the condition `capacity > 0`.



This confirms that the observed record violates the stated business rule. It does not, by itself, establish the root cause or prove that the API implementation is responsible.



## 5. QA Lessons



* Record observed data before drawing conclusions.

* A `null` value alone does not explain why information is absent.

* Compare actual data against an explicit business rule.

* A failing business rule does not automatically identify the root cause.

* Distinguish observed evidence from assumptions.



## 6. Scope and Limitations



This session used illustrative API and JSON examples for conceptual practice. No live API request or Postman test was performed.



The exercises demonstrate introductory understanding; they do not establish mastery of REST API or JSON.



## 7. Completion Record



* Day: 13

* Topic: REST API & JSON Fundamentals

* Evidence file: `api-practice/day-13.md`

* Git commit: Pending

* Git push: Pending
