import {AllUpdates, KEEP_CURRENT, NetworkUpdate} from '../generator/index.js';

const meta = {
  title: 'Gauntlet Supply Caps Update',
  author: '@Gauntlet',
  forumPost:
    'https://governance.aave.com/t/arfc-gauntlet-supply-cap-updates-for-avalanche-arbitrum-optimism-v3/14011',
};

const arbitrumUpdate = {
  ...meta,
  capsUpdates: [
    {
      asset: 'rETH_UNDERLYING',
      supplyCap: 1300n,
      borrowCap: KEEP_CURRENT,
    },
  ],
};

const optimismUpdate = {
  ...meta,
  capsUpdates: [
    {
      asset: 'wstETH_UNDERLYING',
      supplyCap: 23_000n,
      borrowCap: KEEP_CURRENT,
    },
  ],
} satisfies NetworkUpdate;

const updates = {
  Optimism: optimismUpdate,
  Arbitrum: arbitrumUpdate,
} satisfies AllUpdates;

export default updates;
