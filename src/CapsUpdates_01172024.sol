// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3BaseAssets} from 'aave-address-book/AaveV3Base.sol';
import {CapsPlusRiskStewardBaseChain} from '../scripts/CapsPlusRiskStewardBaseChain.s.sol';

/**
  * @title Gauntlet’s Cap Recommendations - Aave v3 BASE - 2023-01-17
  * @author Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlets-supply-cap-recommendation-for-base-aave-v3/16275
 */
contract BaseCapsUpdate_01172024 is CapsPlusRiskStewardBaseChain {
  function name() internal pure override returns (string memory) {
    return 'Base_caps_01172024';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3BaseAssets.cbETH_UNDERLYING,
      supplyCap: 3000,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}