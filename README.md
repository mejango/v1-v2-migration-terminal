# Juicebox v1 Token Terminal

Allows project owners to specify the v1 project token that they are willing to accept from holders in exchange for their v2 project token.

# Install Foundry

To get set up:

1. Install [Foundry](https://github.com/gakonst/foundry).

```bash
curl -L https://foundry.paradigm.xyz | sh
```

2. Install external lib(s)

```bash
git submodule update --init && yarn install
```

then run

```bash
forge update
```

If git modules are failing to clone, not installing, etc (ie overall submodule misbehaving), use `git submodule update --init --recursive --force`

3. Run tests:

```bash
forge test
```

4. Update Foundry periodically:

```bash
foundryup
```

# Deploy & verify

Using the solidity script after configuring the .env accordingly (the sender address must be corresponding to the private key)

See the [Foundry Book for available options](https://book.getfoundry.sh/reference/forge/forge-create.html)

## Rinkeby

```bash
yarn deploy-rinkeby
```

## Mainnet

```bash
yarn deploy-mainnet
```

The deployments are stored in ./broadcast
