// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3ArbitrumAssets} from 'aave-address-book/AaveV3Arbitrum.sol';
import {CapsPlusRiskStewardArbitrum} from '../scripts/CapsPlusRiskStewardArbitrum.s.sol';
import {AaveV3OptimismAssets} from 'aave-address-book/AaveV3Optimism.sol';
import {CapsPlusRiskStewardOptimism} from '../scripts/CapsPlusRiskStewardOptimism.s.sol';
import {AaveV3MetisAssets} from 'aave-address-book/AaveV3Metis.sol';
import {CapsPlusRiskStewardMetis} from '../scripts/CapsPlusRiskStewardMetis.s.sol';
import {AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';
import {CapsPlusRiskStewardMainnet} from '../scripts/CapsPlusRiskStewardMainnet.s.sol';

/**
  * @title 
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/
 */
contract ArbitrumCapsUpdate_20230921 is CapsPlusRiskStewardArbitrum {
  function name() internal pure override returns (string memory) {
    return 'Arbitrum_caps_20230921';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3ArbitrumAssets.wstETH_UNDERLYING,
      supplyCap: EngineFlags.KEEP_CURRENT,
      borrowCap: 2400
    });

    return capsUpdate;
  }
}

/**
  * @title 
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/
 */
contract OptimismCapsUpdate_20230921 is CapsPlusRiskStewardOptimism {
  function name() internal pure override returns (string memory) {
    return 'Optimism_caps_20230921';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3OptimismAssets.wstETH_UNDERLYING,
      supplyCap: EngineFlags.KEEP_CURRENT,
      borrowCap: 1500
    });

    return capsUpdate;
  }
}

/**
  * @title 
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/
 */
contract MetisCapsUpdate_20230921 is CapsPlusRiskStewardMetis {
  function name() internal pure override returns (string memory) {
    return 'Metis_caps_20230921';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](3);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3MetisAssets.mUSDT_UNDERLYING,
      supplyCap: 2000000,
      borrowCap: 2000000
    });

    capsUpdate[1] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3MetisAssets.mUSDC_UNDERLYING,
      supplyCap: 2000000,
      borrowCap: 2000000
    });

    capsUpdate[2] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3MetisAssets.WETH_UNDERLYING,
      supplyCap: EngineFlags.KEEP_CURRENT,
      borrowCap: 180
    });

    return capsUpdate;
  }
}

/**
  * @title 
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/
 */
contract EthereumCapsUpdate_20230921 is CapsPlusRiskStewardMainnet {
  function name() internal pure override returns (string memory) {
    return 'Ethereum_caps_20230921';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3EthereumAssets.wstETH_UNDERLYING,
      supplyCap: 850000,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}