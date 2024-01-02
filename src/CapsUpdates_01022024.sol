// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3OptimismAssets} from 'aave-address-book/AaveV3Optimism.sol';
import {CapsPlusRiskStewardOptimism} from '../scripts/CapsPlusRiskStewardOptimism.s.sol';

/**
  * @title Gauntlet’s Borrow Cap Recommendation - Optimism Aave v3 - 2023-12-29
  * @author Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlets-borrow-cap-recommendation-optimism-aave-v3-2023-12-29/15978
 */
contract OptimismCapsUpdate_01022024 is CapsPlusRiskStewardOptimism {
  function name() internal pure override returns (string memory) {
    return 'Optimism_caps_01022024';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3OptimismAssets.OP_UNDERLYING,
      supplyCap: EngineFlags.KEEP_CURRENT,
      borrowCap: 1000000
    });

    return capsUpdate;
  }
}