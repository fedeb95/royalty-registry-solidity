// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface RaribleV1 {
    /*
     * bytes4(keccak256('getFeeBps(uint256)')) == 0x0ebd4c7f
     * bytes4(keccak256('getFeeRecipients(uint256)')) == 0xb9c4d9fb
     *
     * => 0x0ebd4c7f ^ 0xb9c4d9fb == 0xb7799584
     */
    function getFeeBps(uint256 id) external view returns (uint[] memory);
    function getFeeRecipients(uint256 id) external view returns (address payable[] memory);
}


interface RaribleV2 {
    /*
     * bytes4(keccak256('getRoyalties(LibAsset.AssetType)')) == 0x44c74bcc
     */
}