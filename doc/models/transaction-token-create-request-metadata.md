
# Transaction Token Create Request Metadata

A free-form dictionary for custom metadata.

*This model accepts additional fields of type [String | TrueClass | FalseClass | Float](../../doc/models/containers/transaction-token-create-metadata-props.md).*

## Structure

`TransactionTokenCreateRequestMetadata`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `univapay_reference_id` | `String` | Optional | Any arbitrary value (Free format). |
| `univapay_customer_id` | `UUID \| String` | Optional | Customer ID. |
| `univapay_name` | `String` | Optional | Consumer name passed to payment processors that require it (e.g., konbini, bank transfer). |
| `univapay_phone_number` | `String` | Optional | Consumer phone number passed to payment processors that require it. |
| `additional_properties` | Hash[String, String \| TrueClass \| FalseClass \| Float] | Optional | Transaction Token Create Metadata Props schema. |

## Example

```ruby
transaction_token_create_request_metadata = TransactionTokenCreateRequestMetadata.new(
  univapay_reference_id: 'ref-998877',
  univapay_customer_id: '0fd29949-07d5-4a91-8eaf-fbce0897d944',
  univapay_name: 'univapay-name6',
  univapay_phone_number: 'univapay-phone-number0',
  additional_properties: {
    'exampleAdditionalProperty' => 'String8'
  }
)
```

