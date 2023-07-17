// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3OptimismAssets} from 'aave-address-book/AaveV3Optimism.sol';
import {CapsPlusRiskStewardOptimism} from '../scripts/CapsPlusRiskStewardOptimism.s.sol';
import {AaveV3ArbitrumAssets} from 'aave-address-book/AaveV3Arbitrum.sol';
import {CapsPlusRiskStewardArbitrum} from '../scripts/CapsPlusRiskStewardArbitrum.s.sol';

/**
  * @title Gauntlet Supply Caps Update
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlet-supply-cap-updates-for-avalanche-arbitrum-optimism-v3/14011
 */
contract OptimismCapsUpdate_20230717 is CapsPlusRiskStewardOptimism {
  function name() internal pure override returns (string memory) {
    return 'Optimism_caps_20230717';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3OptimismAssets.wstETH_UNDERLYING,
      supplyCap: 23000,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}

/**
  * @title Gauntlet Supply Caps Update
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlet-supply-cap-updates-for-avalanche-arbitrum-optimism-v3/14011
 */
contract ArbitrumCapsUpdate_20230717 is CapsPlusRiskStewardArbitrum {
  function name() internal pure override returns (string memory) {
    return 'Arbitrum_caps_20230717';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      // rETH_UNDERLYING not present in AaveV3ArbitrumAssets
      asset: 0xEC70Dcb4A1EFa46b8F2D97C310C9c4790ba5ffA8,
      supplyCap: 1300,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}
