// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';
import {CapsPlusRiskStewardMainnet} from '../scripts/CapsPlusRiskStewardMainnet.s.sol';

/**
  * @title This is a temp
  * @author @Gauntlet
  * - Discussion: xyz.xom
 */
contract EthereumCapsUpdate_12052023 is CapsPlusRiskStewardMainnet {
  function name() internal pure override returns (string memory) {
    return 'Ethereum_caps_12052023';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3EthereumAssets.AAVE_UNDERLYING,
      supplyCap: 1850111,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    return capsUpdate;
  }
}