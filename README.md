# solidity-playground

## Issues

### Different bytecodes for the same contracts

#### Solidity version:

```bash
solc, the solidity compiler commandline interface
Version: 0.5.7+commit.6da8b019.Linux.g++
```

#### Reproduction

1. In the root directory, compile the `World` contract described `contracts/World.sol` with bytecodes output to current directory

   ```bash
   solc --bin --optimize contracts/World.sol -o .
   ```

This should give us two files `Hello.bin` and `World.bin` containing bytecodes for the respective contracts

2. Change into the `contracts` folder, and compile the `World.sol` with bytecodes output to that folder

   ```bash
   solc --bin --optimize World.sol -o .
   ```

This should also give us two files `Hello.bin` and `World.bin` containing bytecodes for the respective contracts

#### Got

Compare the `World.bin` and `contracts/World.bin` with `diff` would tell us difference

#### Expectation

The same contract manifest should produce the same bytecodes
