## Reserve changes

### Reserve altered

#### WETH ([0x420000000000000000000000000000000000000A](https://andromeda-explorer.metis.io/address/0x420000000000000000000000000000000000000A))

| description | value before | value after |
| --- | --- | --- |
| borrowCap | 90 WETH | 180 WETH |


#### m.USDC ([0xEA32A96608495e54156Ae48931A7c20f0dcc1a21](https://andromeda-explorer.metis.io/address/0xEA32A96608495e54156Ae48931A7c20f0dcc1a21))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 1,200,000 m.USDC | 2,000,000 m.USDC |
| borrowCap | 1,200,000 m.USDC | 2,000,000 m.USDC |


#### m.USDT ([0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC](https://andromeda-explorer.metis.io/address/0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 1,400,000 m.USDT | 2,000,000 m.USDT |
| borrowCap | 1,400,000 m.USDT | 2,000,000 m.USDT |


## Raw diff

```json
{
  "reserves": {
    "0x420000000000000000000000000000000000000A": {
      "borrowCap": {
        "from": 90,
        "to": 180
      }
    },
    "0xEA32A96608495e54156Ae48931A7c20f0dcc1a21": {
      "borrowCap": {
        "from": 1200000,
        "to": 2000000
      },
      "supplyCap": {
        "from": 1200000,
        "to": 2000000
      }
    },
    "0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC": {
      "borrowCap": {
        "from": 1400000,
        "to": 2000000
      },
      "supplyCap": {
        "from": 1400000,
        "to": 2000000
      }
    }
  }
}
```