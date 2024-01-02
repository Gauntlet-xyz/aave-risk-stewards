// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAaveV3ConfigEngine} from 'aave-helpers/v3-config-engine/IAaveV3ConfigEngine.sol';
import {EngineFlags} from 'aave-helpers/v3-config-engine/EngineFlags.sol';
import {AaveV3MetisAssets} from 'aave-address-book/AaveV3Metis.sol';
import {CapsPlusRiskStewardMetis} from '../scripts/CapsPlusRiskStewardMetis.s.sol';

/**
  * @title Gauntlet’s Cap Recommendations - Aave v3 Metis - 2023-12-28
  * @author Gauntlet
  * - Discussion: https://governance.aave.com/t/arfc-gauntlets-cap-recommendations-aave-v3-metis-2023-12-28/15968
 */
contract MetisCapsUpdate_01022024 is CapsPlusRiskStewardMetis {
  function name() internal pure override returns (string memory) {
    return 'Metis_caps_01022024';
  }

  function capsUpdates() internal pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](3);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3MetisAssets.Metis_UNDERLYING,
      supplyCap: 400000,
      borrowCap: EngineFlags.KEEP_CURRENT
    });

    capsUpdate[1] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3MetisAssets.mUSDC_UNDERLYING,
      supplyCap: 8000000,
      borrowCap: 7200000
    });

    capsUpdate[2] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3MetisAssets.mUSDT_UNDERLYING,
      supplyCap: 6500000,
      borrowCap: 5900000
    });

    return capsUpdate;
  }
}