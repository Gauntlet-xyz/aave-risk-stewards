// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3PolygonAssets} from 'aave-address-book/AaveV3Polygon.sol';
import {CapsPlusRiskStewardPolygon} from '../scripts/CapsPlusRiskStewardPolygon.s.sol';
import {AaveV3ArbitrumAssets} from 'aave-address-book/AaveV3Arbitrum.sol';
import {CapsPlusRiskStewardArbitrum} from '../scripts/CapsPlusRiskStewardArbitrum.s.sol';

/**
  * @title polygon caps update for 06-21-2023
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-supply-cap-updates-for-polygon-aave-v3-arbitrum-aave-v3-on-2023-06-17/13744/3?u=gauntlet
 */
contract PolygonCapsUpdate_20230621 is CapsPlusRiskStewardPolygon {
  function name() internal pure override returns (string memory) {
    return 'Polygon_caps_20230621';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3PolygonAssets.LINK_UNDERLYING,
      supplyCap: 668000,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}

/**
  * @title arbitrum caps update for 06-21-2023
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-supply-cap-updates-for-polygon-aave-v3-arbitrum-aave-v3-on-2023-06-17/13744/3?u=gauntlet
 */
contract ArbitrumCapsUpdate_20230621 is CapsPlusRiskStewardArbitrum {
  function name() internal pure override returns (string memory) {
    return 'Arbitrum_caps_20230621';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3ArbitrumAssets.LINK_UNDERLYING,
      supplyCap: 810000,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}