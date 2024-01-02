## Reserve changes

### Reserve altered

#### Metis ([0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000](https://andromeda-explorer.metis.io/address/0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 360,000 Metis | 400,000 Metis |


#### m.USDC ([0xEA32A96608495e54156Ae48931A7c20f0dcc1a21](https://andromeda-explorer.metis.io/address/0xEA32A96608495e54156Ae48931A7c20f0dcc1a21))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 6,000,000 m.USDC | 8,000,000 m.USDC |
| borrowCap | 4,000,000 m.USDC | 7,200,000 m.USDC |


#### m.USDT ([0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC](https://andromeda-explorer.metis.io/address/0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC))

| description | value before | value after |
| --- | --- | --- |
| supplyCap | 5,000,000 m.USDT | 6,500,000 m.USDT |
| borrowCap | 4,000,000 m.USDT | 5,900,000 m.USDT |


## Raw diff

```json
{
  "reserves": {
    "0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000": {
      "supplyCap": {
        "from": 360000,
        "to": 400000
      }
    },
    "0xEA32A96608495e54156Ae48931A7c20f0dcc1a21": {
      "borrowCap": {
        "from": 4000000,
        "to": 7200000
      },
      "supplyCap": {
        "from": 6000000,
        "to": 8000000
      }
    },
    "0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC": {
      "borrowCap": {
        "from": 4000000,
        "to": 5900000
      },
      "supplyCap": {
        "from": 5000000,
        "to": 6500000
      }
    }
  }
}
```