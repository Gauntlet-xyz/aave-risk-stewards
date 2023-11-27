// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3ArbitrumAssets} from 'aave-address-book/AaveV3Arbitrum.sol';
import {CapsPlusRiskStewardArbitrum} from '../scripts/CapsPlusRiskStewardArbitrum.s.sol';

/**
  * @title Gauntlet Borrow Cap Recommendation for Arbitrum v3 2023-11-27
  * @author Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlet-borrow-cap-recommendation-for-arbitrum-v3-2023-11-27/15675
 */
contract ArbitrumCapsUpdate_11272023 is CapsPlusRiskStewardArbitrum {
  function name() internal pure override returns (string memory) {
    return 'Arbitrum_caps_11272023';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3ArbitrumAssets.USDCn_UNDERLYING,
      supplyCap: EngineFlags.KEEP_CURRENT,
      borrowCap: 60000000
    });

    return capsUpdate;
  }
}