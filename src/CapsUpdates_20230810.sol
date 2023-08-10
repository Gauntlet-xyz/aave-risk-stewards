// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3PolygonAssets} from 'aave-address-book/AaveV3Polygon.sol';
import {CapsPlusRiskStewardPolygon} from '../scripts/CapsPlusRiskStewardPolygon.s.sol';
import {AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';
import {CapsPlusRiskStewardMainnet} from '../scripts/CapsPlusRiskStewardMainnet.s.sol';

/**
  * @title Gauntlet Caps Update
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlet-borrow-and-supply-cap-updates-for-ethereum-and-polygon-aave-v3-2023-08-08/14379
 */
contract PolygonCapsUpdate_20230810 is CapsPlusRiskStewardPolygon {
  function name() internal pure override returns (string memory) {
    return 'Polygon_caps_20230810';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3PolygonAssets.SUSHI_UNDERLYING,
      supplyCap: EngineFlags.KEEP_CURRENT,
      borrowCap: 180000
    });

    return capsUpdate;
  }
}

/**
  * @title Gauntlet Caps Update
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlet-borrow-and-supply-cap-updates-for-ethereum-and-polygon-aave-v3-2023-08-08/14379
 */
contract EthereumCapsUpdate_20230810 is CapsPlusRiskStewardMainnet {
  function name() internal pure override returns (string memory) {
    return 'Ethereum_caps_20230810';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3EthereumAssets.rETH_UNDERLYING,
      supplyCap: 60000,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}
