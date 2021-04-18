pragma solidity 0.5.0;

contract IStaking {
    event Staked(address indexed user, uint256 amount, uint256 total, bytes data);
    event Unstaked(address indexed user, uint256 amount, uint256 total, bytes data);

    function stake(uint256 amount) external;
    function stakeFor(address user, uint256 amount) external;
    function unstake(uint256 amount) external;
    function totalStakedFor(address addr) public view returns (uint256);
    function totalStaked() public view returns (uint256);
    function token() external view returns (address);

    /**
     * @return False. This application does not support staking history.
     */
    function supportsHistory() external pure returns (bool) {
        return false;
    }
}