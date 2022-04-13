# Winner

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rank** | **Int** | Where the product&#39;s bid ranked in the auction. Zero-based, so the product with rank 0 won the auction and had the highest bid. In an auction response, the winners array is sorted so rank will match the entry&#39;s index | 
**productId** | **String** | The marketplace&#39;s ID for the product. It will match the ID for a product in the request&#39;s products array. | 
**winnerType** | **String** | The type of the winning bid, depending on the campaign. It can be product or vendor. | [optional] 
**winnerId** | **String** | The marketplace&#39;s ID of the winnning item, depending on the campaign. | [optional] 
**resolvedBidId** | **String** | An opaque topsort ID to be used when this item is interacted with. | [optional] 
**assetUrl** | **String** | The vendor defined asset that the marketplace has to use as a banner. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


