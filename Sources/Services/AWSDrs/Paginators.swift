// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DrsClient {
    /// Paginate over `[ListExtensibleSourceServersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListExtensibleSourceServersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListExtensibleSourceServersOutput`
    public func listExtensibleSourceServersPaginated(input: ListExtensibleSourceServersInput) -> ClientRuntime.PaginatorSequence<ListExtensibleSourceServersInput, ListExtensibleSourceServersOutput> {
        return ClientRuntime.PaginatorSequence<ListExtensibleSourceServersInput, ListExtensibleSourceServersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listExtensibleSourceServers(input:))
    }
}

extension ListExtensibleSourceServersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListExtensibleSourceServersInput {
        return ListExtensibleSourceServersInput(
            maxResults: self.maxResults,
            nextToken: token,
            stagingAccountID: self.stagingAccountID
        )}
}

extension PaginatorSequence where OperationStackInput == ListExtensibleSourceServersInput, OperationStackOutput == ListExtensibleSourceServersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listExtensibleSourceServersPaginated`
    /// to access the nested member `[DrsClientTypes.StagingSourceServer]`
    /// - Returns: `[DrsClientTypes.StagingSourceServer]`
    public func items() async throws -> [DrsClientTypes.StagingSourceServer] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DrsClient {
    /// Paginate over `[ListLaunchActionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListLaunchActionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListLaunchActionsOutput`
    public func listLaunchActionsPaginated(input: ListLaunchActionsInput) -> ClientRuntime.PaginatorSequence<ListLaunchActionsInput, ListLaunchActionsOutput> {
        return ClientRuntime.PaginatorSequence<ListLaunchActionsInput, ListLaunchActionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listLaunchActions(input:))
    }
}

extension ListLaunchActionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLaunchActionsInput {
        return ListLaunchActionsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            resourceId: self.resourceId
        )}
}

extension PaginatorSequence where OperationStackInput == ListLaunchActionsInput, OperationStackOutput == ListLaunchActionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listLaunchActionsPaginated`
    /// to access the nested member `[DrsClientTypes.LaunchAction]`
    /// - Returns: `[DrsClientTypes.LaunchAction]`
    public func items() async throws -> [DrsClientTypes.LaunchAction] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DrsClient {
    /// Paginate over `[ListStagingAccountsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStagingAccountsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStagingAccountsOutput`
    public func listStagingAccountsPaginated(input: ListStagingAccountsInput) -> ClientRuntime.PaginatorSequence<ListStagingAccountsInput, ListStagingAccountsOutput> {
        return ClientRuntime.PaginatorSequence<ListStagingAccountsInput, ListStagingAccountsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listStagingAccounts(input:))
    }
}

extension ListStagingAccountsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStagingAccountsInput {
        return ListStagingAccountsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListStagingAccountsInput, OperationStackOutput == ListStagingAccountsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listStagingAccountsPaginated`
    /// to access the nested member `[DrsClientTypes.Account]`
    /// - Returns: `[DrsClientTypes.Account]`
    public func accounts() async throws -> [DrsClientTypes.Account] {
        return try await self.asyncCompactMap { item in item.accounts }
    }
}
