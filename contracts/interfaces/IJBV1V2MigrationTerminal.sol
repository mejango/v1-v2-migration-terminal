// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import '@jbox/sol/contracts/TicketBooth.sol';
import '@jbx-protocol/contracts-v2/contracts/interfaces/IJBProjects.sol';
import '@jbx-protocol/contracts-v2/contracts/interfaces/IJBDirectory.sol';

interface IJBV1V2MigrationTerminal {
  event SetV1ProjectId(uint256 indexed _projectId, uint256 indexed _v1ProjectId, address caller);

  event Pay(
    uint256 indexed projectId,
    address payer,
    address beneficiary,
    uint256 amount,
    uint256 beneficiaryTokenCount,
    string memo,
    address caller
  );

  event ReleaseV1Token(
    uint256 indexed projectId,
    uint256 unclaimedBalance,
    uint256 claimedBalance,
    address projectOwner
  );

  function ticketBooth() external view returns (ITicketBooth);

  function directory() external view returns (IJBDirectory);

  function projects() external view returns (IJBProjects);

  function v1ProjectIdOf(uint256 _projectId) external view returns (uint256);

  function finalized(uint256 _projectId) external view returns (bool);

  function setV1ProjectId(uint256 _projectId, uint256 _v1ProjectId) external;

  function releaseV1Token(uint256 _projectId) external;
}
