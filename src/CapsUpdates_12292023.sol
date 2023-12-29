// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';
import {CapsPlusRiskStewardMainnet} from '../scripts/CapsPlusRiskStewardMainnet.s.sol';

/**
  * @title 2023-12-28: Aave v3 Ethereum - USDT Borrow Caps
  * @author Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlet-supply-and-borrow-cap-recommendations-2023-12-27/15959
 */
contract EthereumCapsUpdate_12292023 is CapsPlusRiskStewardMainnet {
  function name() internal pure override returns (string memory) {
    return 'Ethereum_caps_12292023';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3EthereumAssets.USDT_UNDERLYING,
      supplyCap: EngineFlags.KEEP_CURRENT,
      borrowCap: 550000000
    });

    return capsUpdate;
  }
}