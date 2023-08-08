This is just a training repo for the Patrick Collins YouTube course. I'm doing this is a refresher.

I'm using foundry for my testing.

Use the following to deploy:

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