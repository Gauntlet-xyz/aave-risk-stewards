// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3BaseAssets} from 'aave-address-book/AaveV3Base.sol';
import {CapsPlusRiskStewardBaseChain} from '../scripts/CapsPlusRiskStewardBaseChain.s.sol';

/**
  * @title Gauntlet Aave v3 Base Supply Cap Update
  * @author Gauntlet
  * - Discussion: xyz.com
 */
contract BaseCapsUpdate_12042023 is CapsPlusRiskStewardBaseChain {
  function name() internal pure override returns (string memory) {
    return 'Base_caps_12042023';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3BaseAssets.WETH_UNDERLYING,
      supplyCap: 7000,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}