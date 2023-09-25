import {AllUpdates, KEEP_CURRENT, NetworkUpdate} from '../generator/index.js';

const metisUpdate = {
  title: '',
  author: '@Gauntlet',
  forumPost: 'https://governance.aave.com/',
  capsUpdates: [
    {
      asset: 'Metis_UNDERLYING',
      supplyCap: 240_000n,
      borrowCap: KEEP_CURRENT,
    },
  ],
} satisfies NetworkUpdate;

const arbitrumUpdate = {
  title: '',
  author: '@Gauntlet',
  forumPost: 'https://governance.aave.com/',
  capsUpdates: [
    {
      asset: 'LUSD_UNDERLYING',
      supplyCap: 2_200_000n,
      borrowCap: 1_800_000n,
    },
  ],
} satisfies NetworkUpdate;

const updates = {
  Arbitrum: arbitrumUpdate,
  Metis: metisUpdate,
} satisfies AllUpdates;

export default updates;
