import {AllUpdates, KEEP_CURRENT, NetworkUpdate} from '../generator/index.js';

const polygonUpdate = {
  title: 'Gauntlet Caps Update',
  author: '@Gauntlet',
  forumPost:
    'https://governance.aave.com/t/arfc-gauntlet-borrow-and-supply-cap-updates-for-ethereum-and-polygon-aave-v3-2023-08-08/14379',
  capsUpdates: [
    {
      asset: 'SUSHI_UNDERLYING',
      supplyCap: KEEP_CURRENT,
      borrowCap: 180_000n,
    },
  ],
} satisfies NetworkUpdate;

const ethereumUpdate = {
  title: 'Gauntlet Caps Update',
  author: '@Gauntlet',
  forumPost:
    'https://governance.aave.com/t/arfc-gauntlet-borrow-and-supply-cap-updates-for-ethereum-and-polygon-aave-v3-2023-08-08/14379',
  capsUpdates: [
    {
      asset: 'rETH_UNDERLYING',
      supplyCap: 60_000n,
      borrowCap: KEEP_CURRENT,
    },
  ],
} satisfies NetworkUpdate;

const updates = {
  Polygon: polygonUpdate,
  Ethereum: ethereumUpdate,
} satisfies AllUpdates;

export default updates;
