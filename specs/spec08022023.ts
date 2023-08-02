import {AllUpdates, KEEP_CURRENT, NetworkUpdate} from '../generator/index.js';

const polygonUpdate = {
  title: '08 02 2023 Caps Update',
  author: '@Gauntlet',
  forumPost:
    'https://governance.aave.com/t/arfc-gauntlet-supply-cap-updates-for-wmatic-on-polygon-aave-v3-2023-07-28/14181',
  capsUpdates: [
    {
      asset: 'WMATIC_UNDERLYING',
      supplyCap: 120_000_000n,
      borrowCap: KEEP_CURRENT,
    },
  ],
} satisfies NetworkUpdate;

const updates = {
  Polygon: polygonUpdate,
} satisfies AllUpdates;

export default updates;
