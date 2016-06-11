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