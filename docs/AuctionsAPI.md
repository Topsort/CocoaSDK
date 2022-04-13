# AuctionsAPI

All URIs are relative to *https://demo.api.topsort.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAuction**](AuctionsAPI.md#createauction) | **POST** /auctions | Creates a new auction


# **createAuction**
```swift
    open class func createAuction(auctionRequest: AuctionRequest, completion: @escaping (_ data: Auction?, _ error: Error?) -> Void)
```

Creates a new auction

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let auctionRequest = AuctionRequest(slots: BannersSlots(bannerAds: 123), products: [Product(productId: "productId_example", quality: 123)], session: Session(sessionId: "sessionId_example"), vendors: [Vendor(vendorId: "vendorId_example")], bannerOptions: "TODO") // AuctionRequest | The information describing what will be auctioned. Topsort will run an auction for each slot type, for which products and/or vendors' bids will compete against each other. The products and vendors that will participate are also included in the request. 

// Creates a new auction
AuctionsAPI.createAuction(auctionRequest: auctionRequest) { (response, error) in
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
 **auctionRequest** | [**AuctionRequest**](AuctionRequest.md) | The information describing what will be auctioned. Topsort will run an auction for each slot type, for which products and/or vendors&#39; bids will compete against each other. The products and vendors that will participate are also included in the request.  | 

### Return type

[**Auction**](Auction.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

