import {AllUpdates, KEEP_CURRENT, NetworkUpdate} from '../generator/index.js';

const ethereumUpdate = {
  title: '08 03 2023 Caps Update',
  author: '@Gauntlet',
  forumPost:
    'https://governance.aave.com/t/arfc-gauntlet-supply-cap-updates-for-usdt-on-eth-aave-v3-2023-08-01/14226',
  capsUpdates: [
    {
      asset: 'USDT_UNDERLYING',
      supplyCap: 300_000_000n,
      borrowCap: KEEP_CURRENT,
    },
  ],
} satisfies NetworkUpdate;

const updates = {
  Ethereum: ethereumUpdate,
} satisfies AllUpdates;

export default updates;
