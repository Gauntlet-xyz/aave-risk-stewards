import {AllUpdates, KEEP_CURRENT, NetworkUpdate} from '../generator/index.js';

const ethereumUpdate = {
  title: '08 17 2023 Caps Update',
  author: '@Gauntlet',
  forumPost:
    'https://governance.aave.com/t/gauntlet-borrow-and-supply-cap-recommendations-for-ethereum-and-arbitrum-aave-v3-2023-08-16/14517',
  capsUpdates: [
    {
      asset: 'LUSD_UNDERLYING',
      supplyCap: 12_000_000n,
      borrowCap: KEEP_CURRENT,
    },
  ],
} satisfies NetworkUpdate;

const arbitrumUpdate = {
  title: '08 17 2023 Caps Update',
  author: '@Gauntlet',
  forumPost:
    'https://governance.aave.com/t/gauntlet-borrow-and-supply-cap-recommendations-for-ethereum-and-arbitrum-aave-v3-2023-08-16/14517',
  capsUpdates: [
    {
      asset: 'rETH_UNDERLYING',
      supplyCap: 1_700n,
      borrowCap: 340n,
    },
  ],
} satisfies NetworkUpdate;

const updates = {
  Ethereum: ethereumUpdate,
  Arbitrum: arbitrumUpdate,
} satisfies AllUpdates;

export default updates;
