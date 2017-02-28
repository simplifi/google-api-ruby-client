# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module Adexchangebuyer2V2beta1
      # Ad Exchange Buyer API II
      #
      # Accesses the latest features for managing Ad Exchange accounts, Real-Time
      #  Bidding configurations and auction metrics, and Marketplace programmatic deals.
      #
      # @example
      #    require 'google/apis/adexchangebuyer2_v2beta1'
      #
      #    Adexchangebuyer2 = Google::Apis::Adexchangebuyer2V2beta1 # Alias the module
      #    service = Adexchangebuyer2::AdExchangeBuyerIIService.new
      #
      # @see https://developers.google.com/ad-exchange/buyer-rest/guides/client-access/
      class AdExchangeBuyerIIService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://adexchangebuyer.googleapis.com/', '')
        end
        
        # Lists all the client entities that satisfy a given query.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer client entities than
        #   requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] name_filter
        #   If specified, only return client entities whose names partially match
        #   this filter string.
        # @param [String] entity_type
        #   Optionally filter by the entity type.
        #   If both name_filter and entity_type are present, only the entities that
        #   satisfy
        #   both the name_filter and are of type entity_type are returned.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListClientEntitiesResponse.nextPageToken
        #   returned from the previous call to the
        #   cliententities.list method.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListClientEntitiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListClientEntitiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_client_entities(page_size: nil, name_filter: nil, entity_type: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/clientEntities', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListClientEntitiesResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListClientEntitiesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['nameFilter'] = name_filter unless name_filter.nil?
          command.query['entityType'] = entity_type unless entity_type.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a client buyer with a given client account ID.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer to retrieve. (required)
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_client(account_id, client_account_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Client
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the clients for the current sponsor buyer.
        # @param [String] account_id
        #   Unique numerical account ID of the sponsor buyer to list the clients for.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer clients than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListClientsResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.clients.list method.
        # @param [String] partner_client_id
        #   Optional unique identifier (from the standpoint of
        #   an Ad Exchange buyer partner) of the client to return.
        #   If specified, at most one client will be returned in the response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListClientsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListClientsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_clients(account_id, page_size: nil, page_token: nil, partner_client_id: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListClientsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListClientsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['partnerClientId'] = partner_client_id unless partner_client_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing client buyer.
        # @param [String] account_id
        #   Unique numerical account ID for the buyer of which the client buyer
        #   is a customer; the sponsor buyer to update a client for. (required)
        # @param [String] client_account_id
        #   Unique numerical account ID of the client to update. (required)
        # @param [Google::Apis::Adexchangebuyer2V2beta1::Client] client_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_client(account_id, client_account_id, client_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.request_object = client_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Client
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new client buyer.
        # @param [String] account_id
        #   Unique numerical account ID for the buyer of which the client buyer
        #   is a customer; the sponsor buyer to create a client for. (required)
        # @param [Google::Apis::Adexchangebuyer2V2beta1::Client] client_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_client(account_id, client_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/clients', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.request_object = client_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Client
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the known client users for a specified
        # sponsor buyer account ID.
        # @param [String] account_id
        #   Numerical account ID of the sponsor buyer of the client to list users for.
        #   (required)
        # @param [String] client_account_id
        #   The account ID of the client buyer to list users for. (required)
        #   You must specify either a string representation of a
        #   numerical account identifier or the `-` character
        #   to list all the client users for all the clients
        #   of a given sponsor buyer.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer clients than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListClientUsersResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.clients.users.list method.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListClientUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListClientUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_client_users(account_id, client_account_id, page_size: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/users', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListClientUsersResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListClientUsersResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an existing client user.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer
        #   that the user to be retrieved is associated with. (required)
        # @param [String] user_id
        #   Numerical identifier of the user to retrieve. (required)
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ClientUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ClientUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_client_user(account_id, client_account_id, user_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUser::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ClientUser
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing client user.
        # Only the user status can be changed on update.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer that the user to be retrieved
        #   is associated with. (required)
        # @param [String] user_id
        #   Numerical identifier of the user to retrieve. (required)
        # @param [Google::Apis::Adexchangebuyer2V2beta1::ClientUser] client_user_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ClientUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ClientUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_client_user(account_id, client_account_id, user_id, client_user_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUser::Representation
          command.request_object = client_user_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUser::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ClientUser
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an existing client user invitation.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer that the user invitation
        #   to be retrieved is associated with. (required)
        # @param [String] invitation_id
        #   Numerical identifier of the user invitation to retrieve. (required)
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_client_invitation(account_id, client_account_id, invitation_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations/{invitationId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.params['invitationId'] = invitation_id unless invitation_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the client users invitations for a client
        # with a given account ID.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer to list invitations for.
        #   (required)
        #   You must either specify a string representation of a
        #   numerical account identifier or the `-` character
        #   to list all the invitations for all the clients
        #   of a given sponsor buyer.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListClientUserInvitationsResponse.nextPageToken
        #   returned from the previous call to the
        #   clients.invitations.list
        #   method.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer clients than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListClientUserInvitationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListClientUserInvitationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_client_invitations(account_id, client_account_id, page_token: nil, page_size: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListClientUserInvitationsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListClientUserInvitationsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and sends out an email invitation to access
        # an Ad Exchange client buyer account.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer that the user
        #   should be associated with. (required)
        # @param [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation] client_user_invitation_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_client_invitation(account_id, client_account_id, client_user_invitation_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation::Representation
          command.request_object = client_user_invitation_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the information about a DoubleClick publisher network name
        # given its network code. Publisher information is read-only and comes from
        # DoubleClick for Publishers.
        # @param [String] exchange_account_id
        #   Unique numerical account ID that identifies an Exchange Bidder
        #   used for authorization purposes.
        # @param [String] publisher_network_code
        #   A network code of the DoubleClick publisher to delete an association with.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::PublisherName] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::PublisherName]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_publisher_name(exchange_account_id, publisher_network_code, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{exchangeAccountId}/publisherNames/{publisherNetworkCode}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::PublisherName::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::PublisherName
          command.params['exchangeAccountId'] = exchange_account_id unless exchange_account_id.nil?
          command.params['publisherNetworkCode'] = publisher_network_code unless publisher_network_code.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists creatives.
        # @param [String] account_id
        #   The account to list the creatives from.
        #   Specify "-" to list all creatives the current user has access to.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListCreativesResponse.next_page_token
        #   returned from the previous call to 'ListCreatives' method.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer creatives than requested
        #   (due to timeout constraint) even if more are available via another call.
        #   If unspecified, server will pick an appropriate default.
        #   Acceptable values are 1 to 1000, inclusive.
        # @param [String] query
        #   An optional query string to filter creatives. If no filter is specified,
        #   all active creatives will be returned.
        #   Supported queries are:
        #   <ul>
        #   <li>accountId=<i>account_id_string</i>
        #   <li>creativeId=<i>creative_id_string</i>
        #   <li>dealsStatus: `approved, conditionally_approved, disapproved,
        #   not_checked`
        #   <li>openAuctionStatus: `approved, conditionally_approved, disapproved,
        #   not_checked`
        #   <li>attribute: `a numeric attribute from the list of attributes`
        #   <li>disapprovalReason: `a reason from DisapprovalReason
        #   </ul>
        #   Example: 'accountId=12345 AND (dealsStatus:disapproved AND disapprovalReason:
        #   unacceptable_content) OR attribute:47'
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListCreativesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListCreativesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_creatives(account_id, page_token: nil, page_size: nil, query: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/creatives', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListCreativesResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListCreativesResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['query'] = query unless query.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a creative.
        # @param [String] account_id
        #   The account that this creative belongs to.
        #   Can be used to filter the response of the
        #   creatives.list
        #   method.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::Creative] creative_object
        # @param [String] duplicate_id_mode
        #   Indicates if multiple creatives can share an ID or not. Default is
        #   NO_DUPLICATES (one ID per creative).
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Creative] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Creative]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_creative(account_id, creative_object = nil, duplicate_id_mode: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/creatives', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
          command.request_object = creative_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Creative
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['duplicateIdMode'] = duplicate_id_mode unless duplicate_id_mode.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops watching a creative. Will stop push notifications being sent to the
        # topics when the creative changes status.
        # @param [String] account_id
        #   The account of the creative to stop notifications for.
        # @param [String] creative_id
        #   The creative ID of the creative to stop notifications for.
        #   Specify "-" to specify stopping account level notifications.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::StopWatchingCreativeRequest] stop_watching_creative_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_watching_creative(account_id, creative_id, stop_watching_creative_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/creatives/{creativeId}:stopWatching', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::StopWatchingCreativeRequest::Representation
          command.request_object = stop_watching_creative_request_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Empty::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Empty
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a creative.
        # @param [String] account_id
        #   The account the creative belongs to.
        # @param [String] creative_id
        #   The ID of the creative to retrieve.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Creative] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Creative]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_creative(account_id, creative_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/creatives/{creativeId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Creative
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Watches a creative. Will result in push notifications being sent to the
        # topic when the creative changes status.
        # @param [String] account_id
        #   The account of the creative to watch.
        # @param [String] creative_id
        #   The creative ID to watch for status changes.
        #   Specify "-" to watch all creatives under the above account.
        #   If both creative-level and account-level notifications are
        #   sent, only a single notification will be sent to the
        #   creative-level notification topic.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::WatchCreativeRequest] watch_creative_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def watch_creative(account_id, creative_id, watch_creative_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/creatives/{creativeId}:watch', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::WatchCreativeRequest::Representation
          command.request_object = watch_creative_request_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Empty::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Empty
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a creative.
        # @param [String] account_id
        #   The account that this creative belongs to.
        #   Can be used to filter the response of the
        #   creatives.list
        #   method.
        # @param [String] creative_id
        #   The buyer-defined creative ID of this creative.
        #   Can be used to filter the response of the
        #   creatives.list
        #   method.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::Creative] creative_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Creative] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Creative]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_creative(account_id, creative_id, creative_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v2beta1/accounts/{accountId}/creatives/{creativeId}', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
          command.request_object = creative_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Creative
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all creative-deal associations.
        # @param [String] account_id
        #   The account to list the associations from.
        #   Specify "-" to list all creatives the current user has access to.
        # @param [String] creative_id
        #   The creative ID to list the associations from.
        #   Specify "-" to list all creatives under the above account.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListDealAssociationsResponse.next_page_token
        #   returned from the previous call to 'ListDealAssociations' method.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer associations than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] query
        #   An optional query string to filter deal associations. If no filter is
        #   specified, all associations will be returned.
        #   Supported queries are:
        #   <ul>
        #   <li>accountId=<i>account_id_string</i>
        #   <li>creativeId=<i>creative_id_string</i>
        #   <li>dealsId=<i>deals_id_string</i>
        #   <li>dealsStatus:`approved, conditionally_approved, disapproved,
        #   not_checked`
        #   <li>openAuctionStatus:`approved, conditionally_approved, disapproved,
        #   not_checked`
        #   </ul>
        #   Example: 'dealsId=12345 AND dealsStatus:disapproved'
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListDealAssociationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListDealAssociationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_creative_deal_associations(account_id, creative_id, page_token: nil, page_size: nil, query: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListDealAssociationsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListDealAssociationsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['query'] = query unless query.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Associate an existing deal with a creative.
        # @param [String] account_id
        #   The account the creative belongs to.
        # @param [String] creative_id
        #   The ID of the creative associated with the deal.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::AddDealAssociationRequest] add_deal_association_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_deal_association(account_id, creative_id, add_deal_association_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations:add', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::AddDealAssociationRequest::Representation
          command.request_object = add_deal_association_request_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Empty::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Empty
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove the association between a deal and a creative.
        # @param [String] account_id
        #   The account the creative belongs to.
        # @param [String] creative_id
        #   The ID of the creative associated with the deal.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::RemoveDealAssociationRequest] remove_deal_association_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_deal_association(account_id, creative_id, remove_deal_association_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations:remove', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::RemoveDealAssociationRequest::Representation
          command.request_object = remove_deal_association_request_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Empty::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Empty
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all filter sets for the account with the given account ID.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListFilterSetsResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.rtbBreakout.filterSets.list method.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListFilterSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListFilterSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_filter_sets(account_id, page_token: nil, page_size: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListFilterSetsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListFilterSetsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates the specified filter set for the account with the given account ID.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::FilterSet] filter_set_object
        # @param [Boolean] is_transient
        #   Whether the filter set is transient, or should be persisted indefinitely.
        #   By default, filter sets are not transient.
        #   If transient, it will be available for at least 1 hour after creation.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::FilterSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::FilterSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_filter_set(account_id, filter_set_object = nil, is_transient: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/filterSets', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::FilterSet::Representation
          command.request_object = filter_set_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::FilterSet::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::FilterSet
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['isTransient'] = is_transient unless is_transient.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets all metrics that are measured in terms of number of impressions.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to apply.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ImpressionMetrics] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ImpressionMetrics]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_filter_set_impression_metrics(account_id, filter_set_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}/impressionMetrics', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ImpressionMetrics::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ImpressionMetrics
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the requested filter set for the account with the given account
        # ID.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to get.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::FilterSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::FilterSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_filter_set(account_id, filter_set_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::FilterSet::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::FilterSet
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets all metrics that are measured in terms of number of bids.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to apply.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::BidMetrics] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::BidMetrics]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_filter_set_bid_metrics(account_id, filter_set_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}/bidMetrics', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::BidMetrics::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::BidMetrics
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the requested filter set from the account with the given account
        # ID.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to delete.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_filter_set(account_id, filter_set_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Empty::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Empty
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all reasons that caused a bid request not to be sent for an
        # impression, with the number of bid requests not sent for each reason.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to apply.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListFilteredRequestsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListFilteredRequestsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_filter_set_filtered_requests(account_id, filter_set_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}/filteredRequests', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListFilteredRequestsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListFilteredRequestsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all errors that occurred in bid responses, with the number of bid
        # responses affected for each reason.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to apply.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListResponseErrorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListResponseErrorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_filter_set_response_errors(account_id, filter_set_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}/responseErrors', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListResponseErrorsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListResponseErrorsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all reasons for which bid responses were considered to have no
        # applicable bids, with the number of bid responses affected for each reason.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to apply.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListResponsesWithoutBidsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListResponsesWithoutBidsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_filter_set_responses_without_bids(account_id, filter_set_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}/responsesWithoutBids', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListResponsesWithoutBidsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListResponsesWithoutBidsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all reasons for which bids were filtered, with the number of bids
        # filtered for each reason.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to apply.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListFilteredBidsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListFilteredBidsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_filter_set_filtered_bids(account_id, filter_set_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}/filteredBids', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListFilteredBidsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListFilteredBidsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all creatives associated with a specific reason for which bids were
        # filtered, with the number of bids filtered for each creative.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to apply.
        # @param [Fixnum] creative_status_id
        #   The ID of the creative status for which to retrieve a breakdown by
        #   creative.
        #   See creative-status-codes.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListCreativeStatusBreakdownByCreativeResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.filterSets.filteredBids.creatives.list method.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListCreativeStatusBreakdownByCreativeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListCreativeStatusBreakdownByCreativeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_filter_set_filtered_bid_creatives(account_id, filter_set_id, creative_status_id, page_token: nil, page_size: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}/filteredBids/{creativeStatusId}/creatives', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListCreativeStatusBreakdownByCreativeResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListCreativeStatusBreakdownByCreativeResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.params['creativeStatusId'] = creative_status_id unless creative_status_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all details associated with a specific reason for which bids were
        # filtered and a specific creative that was filtered for that reason, with
        # the number of bids filtered for each detail.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to apply.
        # @param [Fixnum] creative_status_id
        #   The ID of the creative status for which to retrieve a breakdown by detail.
        #   See creative-status-codes.
        # @param [String] creative_id
        #   The creative ID for which to retrieve a breakdown by detail.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListCreativeStatusAndCreativeBreakdownByDetailResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListCreativeStatusAndCreativeBreakdownByDetailResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_filter_set_filtered_bid_creative_details(account_id, filter_set_id, creative_status_id, creative_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}/filteredBids/{creativeStatusId}/creatives/{creativeId}/details', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListCreativeStatusAndCreativeBreakdownByDetailResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListCreativeStatusAndCreativeBreakdownByDetailResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.params['creativeStatusId'] = creative_status_id unless creative_status_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all details associated with a specific reason for which bids were
        # filtered, with the number of bids filtered for each detail.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to apply.
        # @param [Fixnum] creative_status_id
        #   The ID of the creative status for which to retrieve a breakdown by detail.
        #   See creative-status-codes.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListCreativeStatusBreakdownByDetailResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListCreativeStatusBreakdownByDetailResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_filter_set_filtered_bid_details(account_id, filter_set_id, creative_status_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}/filteredBids/{creativeStatusId}/details', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListCreativeStatusBreakdownByDetailResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListCreativeStatusBreakdownByDetailResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.params['creativeStatusId'] = creative_status_id unless creative_status_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all reasons that caused an impression to be filtered (i.e. not
        # considered as an inventory match), with the number of impressions that were
        # filtered for each reason.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to apply.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListFilteredImpressionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListFilteredImpressionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_filter_set_filtered_impressions(account_id, filter_set_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}/filteredImpressions', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListFilteredImpressionsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListFilteredImpressionsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all reasons for which bids lost in the auction, with the number of
        # bids that lost for each reason.
        # @param [String] account_id
        #   Account ID of the buyer.
        # @param [Fixnum] filter_set_id
        #   The ID of the filter set to apply.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListLosingBidsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListLosingBidsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_filter_set_losing_bids(account_id, filter_set_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/filterSets/{filterSetId}/losingBids', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListLosingBidsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListLosingBidsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterSetId'] = filter_set_id unless filter_set_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing association between a DoubleClick Exchange Bidding
        # partner and a DoubleClick publisher.
        # @param [String] exchange_account_id
        #   Unique numerical account ID for the Exchange Bidder to delete
        #   an association for.
        # @param [String] publisher_network_code
        #   A network code of the DoubleClick publisher to delete an association with.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_publisher_association(exchange_account_id, publisher_network_code, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v2beta1/accounts/{exchangeAccountId}/publisherAssociations/{publisherNetworkCode}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Empty::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Empty
          command.params['exchangeAccountId'] = exchange_account_id unless exchange_account_id.nil?
          command.params['publisherNetworkCode'] = publisher_network_code unless publisher_network_code.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the known associations between an Exchange Bidder specified
        # by the account ID on the request message and its publisher partners.
        # @param [String] exchange_account_id
        #   Unique numerical account ID of the Exchange Bidder to list
        #   publisher associations for.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListPublisherAssociationsResponse.nextPageToken
        #   returned from the previous call to the
        #   publisherAssociations.list
        #   method.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer associations than
        #   requested. If unspecified, the server will pick an appropriate default.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListPublisherAssociationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListPublisherAssociationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_publisher_associations(exchange_account_id, page_token: nil, page_size: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{exchangeAccountId}/publisherAssociations', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListPublisherAssociationsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListPublisherAssociationsResponse
          command.params['exchangeAccountId'] = exchange_account_id unless exchange_account_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new association between a DoubleClick Exchange Bidding partner
        # and a DoubleClick publisher that makes the Exchange Bidder available
        # to that publisher as a demand source for the purposes of creating
        # yield groups in DoubleClick for Publishers UI.
        # @param [String] exchange_account_id
        #   Unique numerical account ID for the Exchange Bidder to create
        #   an association for.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::PublisherAssociation] publisher_association_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::PublisherAssociation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::PublisherAssociation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_publisher_association(exchange_account_id, publisher_association_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{exchangeAccountId}/publisherAssociations', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::PublisherAssociation::Representation
          command.request_object = publisher_association_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::PublisherAssociation::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::PublisherAssociation
          command.params['exchangeAccountId'] = exchange_account_id unless exchange_account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Prices a reservation.
        # @param [String] account_id
        #   Unique numerical account ID of the buyer to quote a price for.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::ReservationTerms] reservation_terms_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::PricingQuote] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::PricingQuote]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def quote_account_guaranteed_package_reservation(account_id, reservation_terms_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/guaranteedPackages/reservations:quote', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::ReservationTerms::Representation
          command.request_object = reservation_terms_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::PricingQuote::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::PricingQuote
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Books a reservation.
        # @param [String] account_id
        #   Unique numerical account ID of the buyer to create a reservation for.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::Reservation] reservation_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Reservation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Reservation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_guaranteed_package_reservation(account_id, reservation_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/guaranteedPackages/reservations', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::Reservation::Representation
          command.request_object = reservation_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Reservation::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Reservation
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the known advertisers for a specified buyer account ID.
        # DBM partners have many advertisers, and they need to select one as part of the
        # deal terms.
        # @param [String] account_id
        #   Unique numerical account ID of the buyer to list the advertisers
        #   for.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListDbmAdvertisersResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.advertiser.list
        #   method.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer advertisers than
        #   requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] name_filter
        #   If specified, only return advertisers whose names contain
        #   this filter string.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListDbmAdvertisersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListDbmAdvertisersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_guaranteed_package_advertisers(account_id, page_token: nil, page_size: nil, name_filter: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/guaranteedPackages/advertisers', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListDbmAdvertisersResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListDbmAdvertisersResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['nameFilter'] = name_filter unless name_filter.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists targetable sites matching the name_filter.
        # @param [String] account_id
        #   Unique numerical account ID of the buyer to list the sites for.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer sites than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] domain_name_filter
        #   Specifies that only the sites whose domain names contain
        #   this filter string will be returned. If not specified, an empty list will be
        #   returned.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListSitesResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.sites.list
        #   method.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_guaranteed_package_target_sites(account_id, page_size: nil, domain_name_filter: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/guaranteedPackages/targets/sites', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListSitesResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListSitesResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['domainNameFilter'] = domain_name_filter unless domain_name_filter.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the targetable verticals given the name_filter.
        # @param [String] account_id
        #   Unique numerical account ID of the buyer to list the targets for.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListTargetsResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.targets.list
        #   method.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer targets than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] name_filter
        #   If specified, only return targets whose names contain
        #   this filter string, but search deeply, finding nodes at any depth in the
        #   hierarchy below parent_id.
        # @param [String] parent_id
        #   If specified, only return targets which are direct descendants of the given
        #   target. If not specified return all targets at the top level.
        # @param [String] language_code
        #   The BCP-47 language code to localize the response in.
        #   Defaults to English if not specified.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_guaranteed_package_target_verticals(account_id, page_token: nil, page_size: nil, name_filter: nil, parent_id: nil, language_code: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/guaranteedPackages/targets/verticals', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['nameFilter'] = name_filter unless name_filter.nil?
          command.query['parentId'] = parent_id unless parent_id.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists targetable userslists for a given buyer account, also depending
        # on the advertiser.
        # @param [String] account_id
        #   Unique numerical account ID of the buyer to list the user lists for.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer user lists than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] name_filter
        #   If specified, only return user lists whose names contain
        #   this filter string.
        # @param [String] advertiser_id
        #   The DBM advertiser ID for whom we are querying userlists.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListTargetsResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.targets.list
        #   method.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_guaranteed_package_target_user_lists(account_id, page_size: nil, name_filter: nil, advertiser_id: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/guaranteedPackages/targets/userLists', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['nameFilter'] = name_filter unless name_filter.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists targetable geo locations given the name_filter.
        # @param [String] account_id
        #   Unique numerical account ID of the buyer to list the targets for.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListTargetsResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.targets.list
        #   method.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer targets than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] name_filter
        #   If specified, only return targets whose names contain
        #   this filter string, but search deeply, finding nodes at any depth in the
        #   hierarchy below parent_id.
        # @param [String] parent_id
        #   If specified, only return targets which are direct descendants of the given
        #   target. If not specified return all targets at the top level.
        # @param [String] language_code
        #   The BCP-47 language code to localize the response in.
        #   Defaults to English if not specified.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_guaranteed_package_target_geos(account_id, page_token: nil, page_size: nil, name_filter: nil, parent_id: nil, language_code: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/guaranteedPackages/targets/geos', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['nameFilter'] = name_filter unless name_filter.nil?
          command.query['parentId'] = parent_id unless parent_id.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the targetable languages given the name_filter.
        # @param [String] account_id
        #   Unique numerical account ID of the buyer to list the targets for.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer targets than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] name_filter
        #   If specified, only return targets whose names contain
        #   this filter string, but search deeply, finding nodes at any depth in the
        #   hierarchy below parent_id.
        # @param [String] parent_id
        #   If specified, only return targets which are direct descendants of the given
        #   target. If not specified return all targets at the top level.
        # @param [String] language_code
        #   The BCP-47 language code to localize the response in.
        #   Defaults to English if not specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListTargetsResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.targets.list
        #   method.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_guaranteed_package_target_languages(account_id, page_size: nil, name_filter: nil, parent_id: nil, language_code: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/guaranteedPackages/targets/languages', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListTargetsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['nameFilter'] = name_filter unless name_filter.nil?
          command.query['parentId'] = parent_id unless parent_id.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists targetable mobile apps given the name_filter.
        # @param [String] account_id
        #   Unique numerical account ID of the buyer to list mobile apps
        #   for.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer mobile apps than
        #   requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] name_filter
        #   If specified, only return advertisers whose names contain
        #   this filter string.
        # @param [String] language_code
        #   The BCP-47 language code to localize the response in.
        #   Defaults to English if not specified.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListMobileAppsResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.mobileApps.list
        #   method.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListMobileAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListMobileAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_guaranteed_package_target_mobile_apps(account_id, page_size: nil, name_filter: nil, language_code: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/guaranteedPackages/targets/mobileApps', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListMobileAppsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListMobileAppsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['nameFilter'] = name_filter unless name_filter.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the known creative sizes. Users need to tell us which sized
        # creatives they'll have, and will want to select from common sizes.
        # @param [String] account_id
        #   Unique numerical account ID of the buyer to list the creative sizes
        #   for.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListCreativeDimensionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListCreativeDimensionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_guaranteed_package_creative_sizes(account_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/guaranteedPackages/creativeSizes', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListCreativeDimensionsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListCreativeDimensionsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
