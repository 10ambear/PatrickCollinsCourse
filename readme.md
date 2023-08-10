This is just a training repo for the Patrick Collins YouTube course. I'm doing this is a refresher.

I'm using foundry for my testing.

These are some take-aways/tips from the course:

* Run ` source .env ` to add the environment variables to your shell.
* Run the deployment script:
  `forge script script/DeploySimpleStorage.s.sol --rpc-url $RPC_URL --broadcast --private-key $TEST_PKEY`
* To convert from hex to decimal `cast --to-base <hex> dec`
* Format all the code `forge fmt`
* To install the libraries you need `forge install smartcontractkit/chainlink-brownie-contracts@0.6.1 --no-commit`
* It's very important to remap the imports, go look in `remappings.txt` and `foundry.toml` as an example
* To run a specific test run `forge test -vvv --mt <testFunctionName>`
* mt = match test
* mc = match contract
* If you need to test an actual forked URL `forge test -vvv --mt <testFunctionName> --fork-url $RPC_URL`
* How to check gas prices:
```     uint256 gasStart = gasleft(); // 1000
        vm.txGasPrice(GAS_PRICE);
          vm.startPrank(fundMe.getOwner()); // c:200
          fundMe.withdraw();
          vm.stopPrank();

        uint256 gasEnd = gasleft(); // 800
        uint256 gasUsed = (gasStart - gasEnd) * tx.gasprice;
        console.log(gasUsed);
```
* Check storage `forge inspect src/fund-me/fundMe.sol:FundMe storage --pretty`
* To get a little gas optimization file you can run `forge snapshot`
* Have to set `ffi = true` in `foundry.toml` to allow foundry to run scripts on your dev machine 