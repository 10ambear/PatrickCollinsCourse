This is just a training repo for the Patrick Collins YouTube course. I'm doing this is a refresher.

I'm using foundry for my testing.

Use the following to deploy:

* Run ` source .env ` to add the environment variables to your shell.
* Run the deployment script:
  `forge script script/DeploySimpleStorage.s.sol --rpc-url $RPC_URL --broadcast --private-key $TEST_PKEY`
* To convert from hex to decimal `cast --to-base <hex> dec`
* Format all the code `forge fmt`