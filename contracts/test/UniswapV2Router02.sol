pragma solidity ^0.6.0;

import "../@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract UniswapV2Router02 {
    function swapExactETHForTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts) {
        (deadline);
        IERC20(path[1]).transfer(to, amountOutMin);
        uint256[] memory amountsOut = new uint256[](2);
        amountsOut[0] = msg.value;
        amountsOut[1] = amountOutMin;
        return amountsOut;
    }

    function getAmountsOut(uint256 amountIn, address[] calldata path)
        external
        view
        returns (uint256[] memory amounts)
    {
        (path);
        uint256[] memory amountsOut = new uint256[](2);
        amountsOut[0] = amountIn;
        amountsOut[1] = amountIn;
        return amountsOut;
    }
}
