// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3PolygonAssets} from 'aave-address-book/AaveV3Polygon.sol';
import {CapsPlusRiskStewardPolygon} from '../scripts/CapsPlusRiskStewardPolygon.s.sol';

/**
  * @title USDT Borrow Cap Recommendation on Polygon Aave v3 (2024-02-18)
  * @author Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlet-usdt-borrow-cap-recommendation-on-polygon-aave-v3-2024-02-18/16669
 */
contract PolygonCapsUpdate_02202024 is CapsPlusRiskStewardPolygon {
  function name() internal pure override returns (string memory) {
    return 'Polygon_caps_02202024';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3PolygonAssets.USDT_UNDERLYING,
      supplyCap: EngineFlags.KEEP_CURRENT,
      borrowCap: 45000000
    });

    return capsUpdate;
  }
}