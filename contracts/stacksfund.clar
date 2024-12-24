;; Title
;; StacksFund Smart Contract

;; Summary
;; A decentralized fund management contract on the Stacks blockchain, enabling users to deposit, withdraw, create proposals, and vote on them.

;; Description
;; The StacksFund smart contract is designed to manage a decentralized fund on the Stacks blockchain.
;; It includes functionalities for depositing and withdrawing funds, creating and voting on proposals, and executing approved proposals.
;; The contract ensures security and proper fund management through various checks and balances.

;; Constants
(define-constant contract-owner tx-sender)
(define-constant err-owner-only (err u100))
(define-constant err-not-initialized (err u101))
(define-constant err-already-initialized (err u102))
(define-constant err-insufficient-balance (err u103))
(define-constant err-invalid-amount (err u104))
(define-constant err-unauthorized (err u105))
(define-constant err-proposal-not-found (err u106))
(define-constant err-proposal-expired (err u107))
(define-constant err-already-voted (err u108))
(define-constant err-below-minimum (err u109))
(define-constant err-locked-period (err u110))
(define-constant err-transfer-failed (err u111))
(define-constant err-invalid-duration (err u112))
(define-constant err-zero-amount (err u113))
(define-constant err-invalid-target (err u114))
(define-constant err-invalid-description (err u115))
(define-constant minimum-duration u144) ;; minimum 1 day (assuming 10min blocks)
(define-constant maximum-duration u20160) ;; maximum 14 days