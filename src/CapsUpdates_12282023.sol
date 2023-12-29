// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3PolygonAssets} from 'aave-address-book/AaveV3Polygon.sol';
import {CapsPlusRiskStewardPolygon} from '../scripts/CapsPlusRiskStewardPolygon.s.sol';

/**
  * @title 2023-12-28: Aave v3 Polygon - wstETH Borrow Caps Increase
  * @author Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlet-supply-and-borrow-cap-recommendations-2023-12-27/15959
 */
contract PolygonCapsUpdate_12282023 is CapsPlusRiskStewardPolygon {
  function name() internal pure override returns (string memory) {
    return 'Polygon_caps_12282023';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3PolygonAssets.wstETH_UNDERLYING,
      supplyCap: EngineFlags.KEEP_CURRENT,
      borrowCap: 570
    });

    return capsUpdate;
  }
}