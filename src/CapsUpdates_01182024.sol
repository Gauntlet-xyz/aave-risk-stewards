// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3OptimismAssets} from 'aave-address-book/AaveV3Optimism.sol';
import {CapsPlusRiskStewardOptimism} from '../scripts/CapsPlusRiskStewardOptimism.s.sol';

/**
  * @title [ARFC] Gauntlet USDC.e Supply and Borrow Cap Recommendation on Optimism Aave v3
  * @author Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlet-usdc-e-supply-and-borrow-cap-recommendation-on-optimism-aave-v3/16308/
 */
contract OptimismCapsUpdate_01182024 is CapsPlusRiskStewardOptimism {
  function name() internal pure override returns (string memory) {
    return 'Optimism_caps_01182024';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3OptimismAssets.USDC_UNDERLYING,
      supplyCap: 30000000,
      borrowCap: 28000000
    });

    return capsUpdate;
  }
}