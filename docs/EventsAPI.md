# EventsAPI

All URIs are relative to *https://demo.api.topsort.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reportEvent**](EventsAPI.md#reportevent) | **POST** /events | Report an event


# **reportEvent**
```swift
    open class func reportEvent(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, completion: @escaping (_ data: EventResponse?, _ error: Error?) -> Void)
```

Report an event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let UNKNOWN_BASE_TYPE = TODO // UNKNOWN_BASE_TYPE | Use the `/events` endpoint to notify Topsort about significant consumer interactions on the e-commerce site: impressions -- product links become visible to the consumer; clicks -- the consumer clicks on a product link; and purchases -- the consumer buys some products.

// Report an event
EventsAPI.reportEvent(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UNKNOWN_BASE_TYPE** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md) | Use the &#x60;/events&#x60; endpoint to notify Topsort about significant consumer interactions on the e-commerce site: impressions -- product links become visible to the consumer; clicks -- the consumer clicks on a product link; and purchases -- the consumer buys some products. | 

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

