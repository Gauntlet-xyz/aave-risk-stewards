// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3PolygonAssets} from 'aave-address-book/AaveV3Polygon.sol';
import {CapsPlusRiskStewardPolygon} from '../scripts/CapsPlusRiskStewardPolygon.s.sol';

/**
  * @title 08 02 2023 Caps Update
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlet-supply-cap-updates-for-wmatic-on-polygon-aave-v3-2023-07-28/14181
 */
contract PolygonCapsUpdate_20230802 is CapsPlusRiskStewardPolygon {
  function name() internal pure override returns (string memory) {
    return 'Polygon_caps_20230802';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3PolygonAssets.WMATIC_UNDERLYING,
      supplyCap: 120000000,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}