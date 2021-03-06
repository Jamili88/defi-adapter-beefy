pragma solidity ^0.5.0;

import "../openzeppelin-solidity/v2.5.1/contracts/ownership/Ownable.sol";

//import "@openzeppelin/contracts/ownership/Ownable.sol";

contract IRewardDistributionRecipient is Ownable {
    address rewardDistribution;

    function notifyRewardAmount(uint256 reward) external;

    modifier onlyRewardDistribution() {
        require(_msgSender() == rewardDistribution, "Caller is not reward distribution");
        _;
    }

    function setRewardDistribution(address _rewardDistribution) external onlyOwner {
        rewardDistribution = _rewardDistribution;
    }
}
