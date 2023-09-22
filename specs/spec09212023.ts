import {AllUpdates, KEEP_CURRENT, NetworkUpdate} from '../generator/index.js';

const arbitrumUpdate = {
  title: '',
  author: '@Gauntlet',
  forumPost: 'https://governance.aave.com/',
  capsUpdates: [
    {
      asset: 'wstETH_UNDERLYING',
      supplyCap: KEEP_CURRENT,
      borrowCap: 2400n,
    },
  ],
} satisfies NetworkUpdate;

const optimismUpdate = {
  title: '',
  author: '@Gauntlet',
  forumPost: 'https://governance.aave.com/',
  capsUpdates: [
    {
      asset: 'wstETH_UNDERLYING',
      supplyCap: KEEP_CURRENT,
      borrowCap: 1500n,
    },
  ],
} satisfies NetworkUpdate;

const etherumUpdate = {
  title: '',
  author: '@Gauntlet',
  forumPost: 'https://governance.aave.com/',
  capsUpdates: [
    {
      asset: 'wstETH_UNDERLYING',
      supplyCap: 850_000n,
      borrowCap: KEEP_CURRENT,
    },
  ],
} satisfies NetworkUpdate;

const metisUpdate = {
  title: '',
  author: '@Gauntlet',
  forumPost: 'https://governance.aave.com/',
  capsUpdates: [
    {
      asset: 'mUSDT_UNDERLYING',
      supplyCap: 2_000_000n,
      borrowCap: 2_000_000n,
    },
    {
      asset: 'mUSDC_UNDERLYING',
      supplyCap: 2_000_000n,
      borrowCap: 2_000_000n,
    },
    {
      asset: 'WETH_UNDERLYING',
      supplyCap: KEEP_CURRENT,
      borrowCap: 180n,
    },
  ],
} satisfies NetworkUpdate;

const updates = {
  Arbitrum: arbitrumUpdate,
  Optimism: optimismUpdate,
  Metis: metisUpdate,
  Ethereum: etherumUpdate,
} satisfies AllUpdates;

export default updates;
