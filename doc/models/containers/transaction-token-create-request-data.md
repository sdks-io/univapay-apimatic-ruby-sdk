
# Transaction Token Create Request Data

Transaction Token Create Request Data schema.

## Data Type

`TokenCreateCardData | TokenCreateKonbiniData | TokenCreateOnlineData | TokenCreateBankTransferData`

## Cases

| Type |
|  --- |
| [`TokenCreateCardData`](../../../doc/models/token-create-card-data.md) |
| [`TokenCreateKonbiniData`](../../../doc/models/token-create-konbini-data.md) |
| [`TokenCreateOnlineData`](../../../doc/models/token-create-online-data.md) |
| [`TokenCreateBankTransferData`](../../../doc/models/token-create-bank-transfer-data.md) |

## TokenCreateCardData

### Initialization Code

#### Example

```ruby
value = TokenCreateCardData.new(
  card_number: '4242424242424242',
  exp_month: '12',
  exp_year: '2026'
)
```

## TokenCreateKonbiniData

### Initialization Code

#### Example

```ruby
value = TokenCreateKonbiniData.new(
  customer_name: 'Taro Yamada',
  convenience_store: BaseKonbiniDataConvenienceStore::SEVEN_ELEVEN,
  phone_number: TokenCreatePhoneNumber.new(
    country_code: '81',
    local_number: '08012341234'
  ),
  expiration_period: 'P7D',
  expiration_time_shift: '23:59:59+09:00'
)
```

## TokenCreateOnlineData

### Initialization Code

#### Example

```ruby
value = TokenCreateOnlineData.new(
  brand: BaseOnlineDataBrand::WE_CHAT_ONLINE,
  call_method: BaseOnlineDataCallMethod::WEB,
  user_identifier: 'wechat_open_id_12345'
)
```

## TokenCreateBankTransferData

### Initialization Code

#### Example

```ruby
value = TokenCreateBankTransferData.new(
  brand: 'aozora_bank',
  expiration_period: 'PT168H',
  expiration_time_shift: '23:59:59+09:00',
  name: 'Taro Yamada'
)
```

