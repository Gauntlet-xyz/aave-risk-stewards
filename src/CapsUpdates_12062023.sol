// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3ArbitrumAssets} from 'aave-address-book/AaveV3Arbitrum.sol';
import {CapsPlusRiskStewardArbitrum} from '../scripts/CapsPlusRiskStewardArbitrum.s.sol';

/**
  * @title Arbitrum V3 LINK - Increase Supply and Borrow Caps at 100% Utilization December 2023
  * @author Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-increase-supply-and-borrow-caps-at-100-utilization-december-2023/15754
 */
contract ArbitrumCapsUpdate_12062023 is CapsPlusRiskStewardArbitrum {
  function name() internal pure override returns (string memory) {
    return 'Arbitrum_caps_12062023';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3ArbitrumAssets.LINK_UNDERLYING,
      supplyCap: 1575000,
      borrowCap: 484490
    });

    return capsUpdate;
  }
}