import {AllUpdates, KEEP_CURRENT, NetworkUpdate} from '../generator/index.js';

const polygonUpdate = {
  title: 'polygon caps update for 06-21-2023',
  author: '@Gauntlet',
  forumPost:
    'https://governance.aave.com/t/arfc-supply-cap-updates-for-polygon-aave-v3-arbitrum-aave-v3-on-2023-06-17/13744/3?u=gauntlet',
  capsUpdates: [
    {
      asset: 'LINK_UNDERLYING',
      supplyCap: 668_000n,
      borrowCap: KEEP_CURRENT,
    },
  ],
} satisfies NetworkUpdate;

const arbitrumUpdate = {
  title: 'arbitrum caps update for 06-21-2023',
  author: '@Gauntlet',
  forumPost:
    'https://governance.aave.com/t/arfc-supply-cap-updates-for-polygon-aave-v3-arbitrum-aave-v3-on-2023-06-17/13744/3?u=gauntlet',
  capsUpdates: [
    {
      asset: 'LINK_UNDERLYING',
      supplyCap: 810_000n,
      borrowCap: KEEP_CURRENT,
    },
  ],
} satisfies NetworkUpdate;

const updates = {
  Polygon: polygonUpdate,
  Arbitrum: arbitrumUpdate,
} satisfies AllUpdates;

export default updates;
