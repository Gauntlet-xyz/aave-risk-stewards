// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';
import {CapsPlusRiskStewardMainnet} from '../scripts/CapsPlusRiskStewardMainnet.s.sol';
import {AaveV3ArbitrumAssets} from 'aave-address-book/AaveV3Arbitrum.sol';
import {CapsPlusRiskStewardArbitrum} from '../scripts/CapsPlusRiskStewardArbitrum.s.sol';

/**
  * @title 08 17 2023 Caps Update
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/t/gauntlet-borrow-and-supply-cap-recommendations-for-ethereum-and-arbitrum-aave-v3-2023-08-16/14517
 */
contract EthereumCapsUpdate_20230817 is CapsPlusRiskStewardMainnet {
  function name() internal pure override returns (string memory) {
    return 'Ethereum_caps_20230817';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3EthereumAssets.LUSD_UNDERLYING,
      supplyCap: 12000000,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}

/**
  * @title 08 17 2023 Caps Update
  * @author @Gauntlet
  * - Discussion: https://governance.aave.com/t/gauntlet-borrow-and-supply-cap-recommendations-for-ethereum-and-arbitrum-aave-v3-2023-08-16/14517
 */
contract ArbitrumCapsUpdate_20230817 is CapsPlusRiskStewardArbitrum {
  function name() internal pure override returns (string memory) {
    return 'Arbitrum_caps_20230817';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: 0xEC70Dcb4A1EFa46b8F2D97C310C9c4790ba5ffA8,
      supplyCap: 1700,
      borrowCap: 340
    });

    return capsUpdate;
  }
}
