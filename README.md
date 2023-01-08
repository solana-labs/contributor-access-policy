## Summary

This document outlines the procedure for getting Contributor status to various Solana source code repositories and the Solana Tech Discord server.

Everyone is welcome to contribute to the Solana codebase. Contributing doesn’t just mean submitting pull requests, 
there are many different ways for you to get involved, including answering questions on Stack Exchange and Discord, reporting or triaging bugs.

There are two types of Contributor status: 

#### Contributor

Those with the Contributor status have any level of access to the [Solana Program Library](https://github.com/solana-labs/solana-program-library) (SPL)
repository and the Contributor role in the [Solana Tech Discord](https://discordapp.com/invite/pquxPsq).

#### Core Contributor

Those with the Core Contributor status have any level of access to the [Solana](https://github.com/solana-labs/solana) monorepo and the 
Core Contributor role in the [Solana Tech Discord](https://discordapp.com/invite/pquxPsq).

Each Contributor status has 3 levels of Github access, in the order of increasing access:

1. Triage

    Requirement: One voucher from anyone with level 2 or above access.

2. Write

    Requirement: One voucher from anyone with level 3 access or two from
anyone with level 2 access. If only vouched by those with level 2 access, the
user must have Triage access to be promoted.

3. Maintain

    Requirement: One voucher from anyone with level 3 access. This permission
is usually reserved for those maintaining the respective repositories.

Each of the levels implies having the previous levels - e.g. level 2 implies
level 1. A contributor with Write access will be able to triage pull requests
in accordance with Github access policies.

## Detailed Design

### Level 1 - Triage Access

Requirements: One voucher from any user with level 2 or above access.

Contributors with Triage access will have the associated [triage Github access
policy](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization#permissions-for-each-role)
for the [Solana Program Library](https://github.com/solana-labs/solana-program-library) (SPL) repository or the 
[Solana](https://github.com/solana-labs/solana) monorepo.

### Level 2 - Write Access

Requirements: One voucher from anyone with level 3 access or two vouchers from
anyone from level 2. Applicants must have level 1 access to apply for level 2.

Contributors with Write access will have the associated [write Github access
policy](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization#permissions-for-each-role)
for the [Solana Program Library](https://github.com/solana-labs/solana-program-library) (SPL) repository or the 
[Solana](https://github.com/solana-labs/solana) monorepo.

Most notably these permissions allow the contributor to approve and merge pull
requests.

### Level 3 - Maintain Access

Requirements: One voucher from anyone with level 3 access.

Contributors will have the associated [maintain Github access
policy](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization#permissions-for-each-role)
for the [Solana Program Library](https://github.com/solana-labs/solana-program-library) (SPL) repository or the 
[Solana](https://github.com/solana-labs/solana) monorepo.

Users with Maintain access are responsible for managing the the repositories and
granting user access based on the above requirements.

### Vouching Process 

To receive a Contributor status and the respective level of access as defined in the Contributor Access Policy, follow these steps:

1. Open an issue on the [Solana Program Library](https://github.com/solana-labs/solana-program-library) (SPL) repository 
with a title in the following format: "Request Access (Level [X])
for [Username]". Add information that can help identify you such as your 
Discord ID in the issue.
2. Gather your vouchers to add a comment on the issue expressing their support.
3. Once the issue has received enough support, notify the users with Maintain
access by adding a comment tagging
[`@contributors`](https://github.com/orgs/solana-labs/teams/contributors)
and you will be granted the requested level of access.

To receive a Core Contributor status and the respective level of access as defined in the Contributor Access Policy, follow these steps:

1. Open an issue on the [Solana](https://github.com/solana-labs/solana) monorepo
with a title in the following format: "Request Access (Level [X])
for [Username]". Add information that can help identify you such as your 
Discord ID in the issue.
2. Gather your vouchers to add a comment on the issue expressing their support.
3. Once the issue has received enough support, notify the users with Maintain
access by adding a comment tagging
[`@core-contributors`](https://github.com/orgs/solana-labs/teams/core-contributors)
and you will be granted the requested level of access.

### Access Removal Process

In the event that a user requires their access to be removed, follow these steps:

1. Open an issue on the [Solana Program Library](https://github.com/solana-labs/solana-program-library) (SPL) repository 
or the [Solana](https://github.com/solana-labs/solana) monorepo
with the title in the following format: "Revoke Access (Level X) for [Username]".
2. Other users with the appropriate level of access should comment on the issue
to express their support for the removal of access.
3. Once the issue has received enough support, the user's access will be
revoked.

Requirements:

- If a user's level 3 access is being revoked, support from at least two other
users with level 3 access is required.
- If a user's level 1 or 2 access is being revoked, support from at least two 
other users with level 2 or one user with level 3 is required.
- If a user opens the issue to revoke their own access, no support from others
is required.

## Security Considerations

In the event of a malicious actor gaining any level of access, users must
follow the Access Removal Process to revoke that actor's access.
