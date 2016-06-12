#What are some common HTTP status codes?
200 OK - request has succeeded
300 Multiple Choices - requested resource has different choices and cannot be resolved into one
301 Moved Permanently - resource has been assigned a new permanent URI
302 Found - the requested resource resides temporarily under a different URI
304 Not Modified - if the client performed a conditional GET request and access is allowed but the document has not been modified or if the client has done a conditional GET request and the document has not been modified since the date and time specified in the If-Modified-Since field
307 Temporary Redirect - requested resource resides temporarily under a different URI
400 Bad Request - the request could not be understood by the server due to malformed syntax
401 Unauthorized - the request requires user authentication, the response must include a WWW-Authenticate header field containing a challenge applicable to the requested resource
403 Forbidden - the server understood the request but is refusing to fulfill it, authorization will not help and the request should not be repeated
404 Not Found - the server has not found anything match the Request-URI. No indication is given of whether the condition is temporary or permanent
410 Gone - the requested resource is no longer available at the server and no forwarding address is known. This condition is expected to be considered permanent
500 Internal Server Error - the server encountered an unexpected condition which prevented it from fulfilling the request
501 Not Implemented - the server does not support the functionality required to fulfill the requestm used when the server does not recognize the request method and is not capable of supporting it for any resource
503 Service Unavailable - web server is unable to handle your HTTP request at the time, could be due to: server crash, server maintenance, cerver overload, server maliciously being attached, website has used up its allotted bandwidth, server forbidden to return the requested document - usually a temporary condition
550 Permission Denied - the account you are currently logged in to does not have permission to perform the action you are attempting

#What is the difference between a GET request and a POST request? When might each be used?
Get - back button is harmless, can be bookmarked, can be cached, parameters saved in browser history, restricted to 2048 characters, only ASCII characters allowed, less secure than POST because data sent is part of the URL 9don't use when sending passwords or sensitive data, data is visible to everyone in URL, form parameters are encoded into URL in a query string, idempotent - submitting the same GET request multiple times with the same parameters will cause the exact same side effects as just one GET request
Post - data will be re-submitted when back button hit, cannot be bookmarked, not chached, parameters not saved in browser history, no character restrictions, a little afer than GET because parameters are not stored in browser history or in web sever logs, data is not displayed in URL, form parameters are passed in the body of the HTTP request
POST requests are best used for forms that contain sensitive information like a password or credit card info or for requests where the response page will change over time, like a shopping cart. GET requests are good for requests that cause the same side effects, like pulling information from a database based on parameters.

#Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is a piece of data (a small text file with the server name, duration and a value -usually a randomly generated unique number) sent from the website and stored in the users web browser - way to manage stateful information. Information from a cookie can be used to fill in information in HTTP requests.
