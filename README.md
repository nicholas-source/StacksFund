# Stacks Fund Smart Contract

## Overview

The Stacks Fund Smart Contract is a decentralized fund management system built on the Stacks blockchain. It enables users to participate in collective fund management through a transparent and secure smart contract system.

## Features

- **Deposit Management**: Secure deposit of STX tokens with minimum deposit requirements
- **Token System**: Automatic minting and burning of fund tokens representing shares
- **Proposal System**: Create and vote on fund allocation proposals
- **Democratic Governance**: Token-weighted voting system for proposal decisions
- **Time-Locked Deposits**: Security mechanism to prevent rapid withdrawals
- **Automated Execution**: Secure execution of approved proposals

## Core Functions

### User Functions

- `deposit`: Deposit STX tokens into the fund
- `withdraw`: Withdraw STX tokens after lock period
- `create-proposal`: Submit new fund allocation proposals
- `vote`: Participate in proposal voting
- `execute-proposal`: Execute approved proposals

### Read-Only Functions

- `get-balance`: Check account balance
- `get-total-supply`: View total token supply
- `get-proposal`: Retrieve proposal details
- `get-deposit-info`: View deposit information
- `get-vote`: Check voting records

## Technical Details

### Constants

- Minimum deposit: 1,000,000 microSTX
- Lock period: ~10 days (1440 blocks)
- Minimum proposal duration: 1 day (144 blocks)
- Maximum proposal duration: 14 days (20,160 blocks)

### Error Codes

- `100`: Owner-only operation
- `101`: Contract not initialized
- `102`: Already initialized
- `103`: Insufficient balance
- `104`: Invalid amount
- (See contract for complete error code listing)

## Getting Started

### Prerequisites

- Stacks wallet
- Minimum deposit amount in STX
- Understanding of smart contract interactions

### Interacting with the Contract

1. **Initialize Contract** (owner only)
2. **Make Deposit**
   ```clarity
   (contract-call? .stacks-fund deposit u1000000)
   ```
3. **Create Proposal**
   ```clarity
   (contract-call? .stacks-fund create-proposal "Proposal Description" u500000 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM u2880)
   ```

## Security Considerations

- Funds are time-locked after deposit
- Proposal execution requires majority approval
- Built-in checks for balance verification
- Contract owner privileges are limited

## Development Status

This contract is in production-ready state but should undergo thorough security audit before mainnet deployment.

## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Security

For security concerns, please review our [SECURITY.md](SECURITY.md) file.
