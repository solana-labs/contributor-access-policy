## Summary

This document outlines the procedure for getting contributor access to various Solana Labs source code repositories and the Solana Tech Discord server.

Everyone is welcome to contribute to the Solana Labs codebase. Contributing doesn’t just mean submitting pull requests, 
there are many different ways for you to get involved, including answering questions on Stack Exchange or Discord, and reporting or triaging bugs.

#### Repositories

Access is granted based on the repository you are interested in contributing to:

1. The [Solana Program Library (SPL) repository](https://github.com/solana-labs/solana-program-library).
2. The [Solana Labs monorepo](https://github.com/solana-labs/solana).

#### Access Levels

There are 3 levels of Github access, in the order of increasing access:

1. Triage

    Requirement: One voucher from anyone with level 2 or above access. A contributor with Triage access will be able to manage issues
in accordance with Github access policies.

2. Write

    Requirement: Two vouchers from anyone with level 3 access or two from
anyone with level 2 access. A contributor with Write access will be able to merge pull requests
in accordance with Github access policies.

3. Maintain

    Requirement: Two vouchers from anyone with level 3 access. This permission
is usually reserved for those maintaining the respective repositories.

Each of the levels implies having the previous levels - e.g. level 2 implies
level 1. 

## Detailed Design

### Level 1 - Triage Access

Requirements: One voucher from any user with level 2 or above access to the respective repository.

Contributors with Triage access will have the associated [triage Github access
policy](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization#permissions-for-each-role)
for the [Solana Program Library](https://github.com/solana-labs/solana-program-library) (SPL) repository or the
[Solana](https://github.com/solana-labs/solana) monorepo as well as access to Solana Labs' Buildkite CI.

### Level 2 - Write Access

Requirements: Two vouchers from anyone with level 2/3 access to the respective repository. Applicants must have level 1 access to apply for level 2.

Contributors with Write access will have the associated [write Github access
policy](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization#permissions-for-each-role)
for the [Solana Program Library](https://github.com/solana-labs/solana-program-library) (SPL) repository or the 
[Solana](https://github.com/solana-labs/solana) monorepo.

Most notably these permissions allow the contributor to approve and merge pull
requests.

### Level 3 - Maintain Access

Requirements: Two vouchers from anyone with level 3 access to the respective repository.

Contributors with Maintain access will have the associated [maintain Github access
policy](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization#permissions-for-each-role)
for the [Solana Program Library](https://github.com/solana-labs/solana-program-library) (SPL) repository or the 
[Solana](https://github.com/solana-labs/solana) monorepo.

Users with Maintain access are responsible for managing the repositories and
granting user access based on the above requirements.

### Discord Access

Any of the above access levels will grant you the Contributor role in the Solana Tech Discord server and a role tag with your current access level and the respective repository (e.g. SLP-Triage, Mono-Triage).

If you are only interested in getting the Contributor role on Discord without requesting GitHub access, then you can request an existing Contributor to vouch for you in the #contributor-roles-requests channel. The requests should be made in the following format:

```
"I'd like to request the Contributor role for @USER"
```

If you'd like to request a role removal for an existing Contributor, you should do it in the #contributor-roles-requests channel and follow this format:

```
"I'd like to request Contributor role removal for @USER because [REASON]"
```

### Vouching Process 

To receive any access level to the SPL repository or the monorepo, follow these steps:

1. Open an issue on the [Contributor Access Policy](https://github.com/solana-labs/contributor-access-policy) repository
following the [templates for the respective access level](https://github.com/solana-labs/contributor-access-policy/issues/new/choose).
2. Gather your vouchers to add a comment on the issue expressing their support.
3. Once the issue has received enough support, notify a user with Maintain
access to the respective repository by adding a comment tagging him. A list of members and their access levels can be found [here](https://github.com/solana-labs/contributor-access-policy/tree/master/access-control-list).
4. It would take 3 business days for the request to be processed.

**Note**: The vouching comments on the issue should be made in the following format:

```
"I support the promotion of USER to LEVEL for X reasons"
```

### Access Removal Process

In the event that a user requires their access to be removed, follow these steps:

1. Open an issue on the [Contributor Access Policy](https://github.com/solana-labs/contributor-access-policy) repository
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
