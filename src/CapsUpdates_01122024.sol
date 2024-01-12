// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3MetisAssets} from 'aave-address-book/AaveV3Metis.sol';
import {CapsPlusRiskStewardMetis} from '../scripts/CapsPlusRiskStewardMetis.s.sol';

/**
  * @title Queuing Test
  * @author Gauntlet
  * - Discussion: xyz.com
 */
contract MetisCapsUpdate_01122024 is CapsPlusRiskStewardMetis {
  function name() internal pure override returns (string memory) {
    return 'Metis_caps_01122024';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3MetisAssets.WETH_UNDERLYING,
      supplyCap: 400,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}