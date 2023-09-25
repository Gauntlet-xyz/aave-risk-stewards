// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3ArbitrumAssets} from 'aave-address-book/AaveV3Arbitrum.sol';
import {CapsPlusRiskStewardArbitrum} from '../scripts/CapsPlusRiskStewardArbitrum.s.sol';
import {AaveV3MetisAssets} from 'aave-address-book/AaveV3Metis.sol';
import {CapsPlusRiskStewardMetis} from '../scripts/CapsPlusRiskStewardMetis.s.sol';

/**
  * @title
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/
 */
contract ArbitrumCapsUpdate_20230925 is CapsPlusRiskStewardArbitrum {
  function name() internal pure override returns (string memory) {
    return 'Arbitrum_caps_20230925';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: 0x93b346b6BC2548dA6A1E7d98E9a421B42541425b,
      supplyCap: 2200000,
      borrowCap: 1800000
    });

    return capsUpdate;
  }
}

/**
  * @title
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/
 */
contract MetisCapsUpdate_20230925 is CapsPlusRiskStewardMetis {
  function name() internal pure override returns (string memory) {
    return 'Metis_caps_20230925';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3MetisAssets.Metis_UNDERLYING,
      supplyCap: 240000,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}
