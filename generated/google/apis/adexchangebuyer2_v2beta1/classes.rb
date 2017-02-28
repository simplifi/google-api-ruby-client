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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module Adexchangebuyer2V2beta1
      
      # Video creative specification to be used with a reservation.
      class VideoCreativeSpecification
        include Google::Apis::Core::Hashable
      
        # Determines whether a video creative is skippable.
        # Corresponds to the JSON property `isSkippable`
        # @return [Boolean]
        attr_accessor :is_skippable
        alias_method :is_skippable?, :is_skippable
      
        # Represents the duration of a video creative in seconds.
        # Corresponds to the JSON property `durationSec`
        # @return [Fixnum]
        attr_accessor :duration_sec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_skippable = args[:is_skippable] if args.key?(:is_skippable)
          @duration_sec = args[:duration_sec] if args.key?(:duration_sec)
        end
      end
      
      # The number of bids for a given creative.
      class CreativeFrequency
        include Google::Apis::Core::Hashable
      
        # The number of bids associated with the specified creative.
        # Corresponds to the JSON property `bidCount`
        # @return [String]
        attr_accessor :bid_count
      
        # The ID of the creative.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_count = args[:bid_count] if args.key?(:bid_count)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
        end
      end
      
      # Response message for listing all details associated with a given filtered bid
      # reason and a given creative.
      class ListCreativeStatusAndCreativeBreakdownByDetailResponse
        include Google::Apis::Core::Hashable
      
        # The timestamp marking the end of the range (exclusive) for which data is
        # included.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The timestamp marking the start of the range (inclusive) for which data is
        # included.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # List of all detail IDs with their associated bid counts.
        # There is a fixed set of details, hence results are not paged.
        # Corresponds to the JSON property `frequencies`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::DetailFrequency>]
        attr_accessor :frequencies
      
        # The ID of the creative associated with a bid filtered from the auction.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        # The ID of the creative status that identifies the reason the bid was
        # filtered before the auction.
        # See creative-status-codes.
        # Corresponds to the JSON property `creativeStatusId`
        # @return [Fixnum]
        attr_accessor :creative_status_id
      
        # The type of detail that the detail IDs represent.
        # Corresponds to the JSON property `detailType`
        # @return [String]
        attr_accessor :detail_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @frequencies = args[:frequencies] if args.key?(:frequencies)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
          @creative_status_id = args[:creative_status_id] if args.key?(:creative_status_id)
          @detail_type = args[:detail_type] if args.key?(:detail_type)
        end
      end
      
      # @OutputOnly The app type the restriction applies to for mobile device.
      class AppContext
        include Google::Apis::Core::Hashable
      
        # The app types this restriction applies to.
        # Corresponds to the JSON property `appTypes`
        # @return [Array<String>]
        attr_accessor :app_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_types = args[:app_types] if args.key?(:app_types)
        end
      end
      
      # Response message for listing all reasons that bids were filtered from the
      # auction.
      class ListFilteredBidsResponse
        include Google::Apis::Core::Hashable
      
        # The timestamp marking the end of the range (exclusive) for which data is
        # included.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The timestamp marking the start of the range (inclusive) for which data is
        # included.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # List of all creative status IDs, identifying the reason the bids were
        # filtered from the auction, with their associated bid counts.
        # See creative-status-codes.
        # There is a fixed set of statuses, hence results are not paged.
        # Corresponds to the JSON property `frequencies`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CreativeStatusFrequency>]
        attr_accessor :frequencies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @frequencies = args[:frequencies] if args.key?(:frequencies)
        end
      end
      
      # Response message for a number of methods like the
      # list
      # method.
      # Many targets are a simple flat list or tree of name, id pairs.
      class ListTargetsResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of targets.
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Target>]
        attr_accessor :targets
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListTargetsRequest.pageToken
        # field in the subsequent call to the
        # accounts.getTargets.list
        # method
        # (or any of the other similar methods) to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # All the ancestors and direct descendants of the targets.
        # This should be populated whenever the targets above have ancestors or
        # children.
        # Corresponds to the JSON property `ancestorsAndChildren`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Target>]
        attr_accessor :ancestors_and_children
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @targets = args[:targets] if args.key?(:targets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @ancestors_and_children = args[:ancestors_and_children] if args.key?(:ancestors_and_children)
        end
      end
      
      # @OutputOnly A security context.
      class SecurityContext
        include Google::Apis::Core::Hashable
      
        # The security types in this context.
        # Corresponds to the JSON property `securities`
        # @return [Array<String>]
        attr_accessor :securities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @securities = args[:securities] if args.key?(:securities)
        end
      end
      
      # Response message for the
      # list
      # method.
      class ListCreativeDimensionsResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of creative sizes.
        # Corresponds to the JSON property `creativeDimensions`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CreativeDimensions>]
        attr_accessor :creative_dimensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_dimensions = args[:creative_dimensions] if args.key?(:creative_dimensions)
        end
      end
      
      # Response message for listing all reasons that bid requests were filtered and
      # not sent to the buyer.
      class ListFilteredRequestsResponse
        include Google::Apis::Core::Hashable
      
        # List of all callout status IDs, identifying the reason the bid request was
        # filtered, with their associated impression counts.
        # See callout-status-codes.
        # There is a fixed set of statuses, hence results are not paged.
        # Corresponds to the JSON property `frequencies`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CalloutStatusFrequency>]
        attr_accessor :frequencies
      
        # The timestamp marking the end of the range (exclusive) for which data is
        # included.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The timestamp marking the start of the range (inclusive) for which data is
        # included.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequencies = args[:frequencies] if args.key?(:frequencies)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # A response for listing creatives.
      class ListCreativesResponse
        include Google::Apis::Core::Hashable
      
        # The list of creatives.
        # Corresponds to the JSON property `creatives`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Creative>]
        attr_accessor :creatives
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListCreativesRequest.page_token
        # field in the subsequent call to `ListCreatives` method to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creatives = args[:creatives] if args.key?(:creatives)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # HTML content for a creative.
      class HtmlContent
        include Google::Apis::Core::Hashable
      
        # The width of the HTML snippet in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        # The HTML snippet that displays the ad when inserted in the web page.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # The height of the HTML snippet in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @width = args[:width] if args.key?(:width)
          @snippet = args[:snippet] if args.key?(:snippet)
          @height = args[:height] if args.key?(:height)
        end
      end
      
      # The number of bids with the specified creative status.
      class CreativeStatusFrequency
        include Google::Apis::Core::Hashable
      
        # The ID of the creative status.
        # See creative-status-codes.
        # Corresponds to the JSON property `creativeStatusId`
        # @return [Fixnum]
        attr_accessor :creative_status_id
      
        # The number of bids associated with the specified status.
        # Corresponds to the JSON property `bidCount`
        # @return [String]
        attr_accessor :bid_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_status_id = args[:creative_status_id] if args.key?(:creative_status_id)
          @bid_count = args[:bid_count] if args.key?(:bid_count)
        end
      end
      
      # A specific filtering status and how many times it occurred.
      class Reason
        include Google::Apis::Core::Hashable
      
        # The filtering status code. Please refer to the
        # [creative-status-codes.txt](https://storage.googleapis.com/adx-rtb-
        # dictionaries/creative-status-codes.txt)
        # file for different statuses.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # The number of times the creative was filtered for the status. The
        # count is aggregated across all publishers on the exchange.
        # Corresponds to the JSON property `count`
        # @return [String]
        attr_accessor :count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @count = args[:count] if args.key?(:count)
        end
      end
      
      # The dimensions of a creative.
      class CreativeDimensions
        include Google::Apis::Core::Hashable
      
        # The height in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # The width in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Video content for a creative.
      class VideoContent
        include Google::Apis::Core::Hashable
      
        # The URL to fetch a video ad.
        # Corresponds to the JSON property `videoUrl`
        # @return [String]
        attr_accessor :video_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @video_url = args[:video_url] if args.key?(:video_url)
        end
      end
      
      # The number of impressions for which the corresponding response had no
      # applicable bids, as described by the specified status.
      class ResponsesWithoutBidsStatusFrequency
        include Google::Apis::Core::Hashable
      
        # The number of impressions associated with the specified status.
        # Corresponds to the JSON property `impressionCount`
        # @return [String]
        attr_accessor :impression_count
      
        # The status that caused the bid response to be considered to have no
        # applicable bids.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @impression_count = args[:impression_count] if args.key?(:impression_count)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Response message for listing all reasons that bids lost in the auction.
      class ListLosingBidsResponse
        include Google::Apis::Core::Hashable
      
        # List of all creative status IDs with their associated bid counts.
        # See creative-status-codes.
        # There is a fixed set of statuses, hence results are not paged.
        # Corresponds to the JSON property `frequencies`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CreativeStatusFrequency>]
        attr_accessor :frequencies
      
        # The timestamp marking the end of the range (exclusive) for which data is
        # included.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The timestamp marking the start of the range (inclusive) for which data is
        # included.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequencies = args[:frequencies] if args.key?(:frequencies)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # An accepted quote; the user is expected to mirror back the exact quote they
      # received to verify that there has been no confusion. The UI should display
      # the pricing quote to the user and have them confirm it before mirroring back
      # this PricingQuote in a CreateReservationRequest.
      class Reservation
        include Google::Apis::Core::Hashable
      
        # This will be absent in the create reservation request, and populated in the
        # create reservation response.
        # Corresponds to the JSON property `dealId`
        # @return [String]
        attr_accessor :deal_id
      
        # A complete description of reservation terms including price, to be returned
        # as a quote that the user can accept.
        # Corresponds to the JSON property `pricingQuote`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::PricingQuote]
        attr_accessor :pricing_quote
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deal_id = args[:deal_id] if args.key?(:deal_id)
          @pricing_quote = args[:pricing_quote] if args.key?(:pricing_quote)
        end
      end
      
      # Response message for the
      # list
      # method.
      class ListSitesResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of sites.
        # Corresponds to the JSON property `sites`
        # @return [Array<String>]
        attr_accessor :sites
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListSitesRequest.pageToken
        # field in the subsequent call to the
        # accounts.sites.list
        # method
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sites = args[:sites] if args.key?(:sites)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # @OutputOnly The auction type the restriction applies to.
      class AuctionContext
        include Google::Apis::Core::Hashable
      
        # The auction types this restriction applies to.
        # Corresponds to the JSON property `auctionTypes`
        # @return [Array<String>]
        attr_accessor :auction_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auction_types = args[:auction_types] if args.key?(:auction_types)
        end
      end
      
      # The set of metrics that are measured in numbers of impressions, representing
      # how many impressions were considered eligible at each stage of the bidding
      # funnel.
      class ImpressionMetrics
        include Google::Apis::Core::Hashable
      
        # The timestamp marking the end of the range (exclusive) for which data is
        # included.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The number of impressions for which the buyer successfully sent a response
        # to Ad Exchange.
        # Corresponds to the JSON property `successfulResponses`
        # @return [String]
        attr_accessor :successful_responses
      
        # The timestamp marking the start of the range (inclusive) for which data is
        # included.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The number of impressions available to the buyer on Ad Exchange.
        # In some cases this value may be unavailable.
        # Corresponds to the JSON property `availableImpressions`
        # @return [String]
        attr_accessor :available_impressions
      
        # The number of impressions that match the buyer's inventory pretargeting.
        # Corresponds to the JSON property `inventoryMatches`
        # @return [String]
        attr_accessor :inventory_matches
      
        # The number of impressions for which Ad Exchange sent the buyer a bid
        # request.
        # Corresponds to the JSON property `bidRequests`
        # @return [String]
        attr_accessor :bid_requests
      
        # The number of impressions for which Ad Exchange received a response from
        # the buyer that contained at least one applicable bid.
        # Corresponds to the JSON property `responsesWithBids`
        # @return [String]
        attr_accessor :responses_with_bids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @successful_responses = args[:successful_responses] if args.key?(:successful_responses)
          @start_time = args[:start_time] if args.key?(:start_time)
          @available_impressions = args[:available_impressions] if args.key?(:available_impressions)
          @inventory_matches = args[:inventory_matches] if args.key?(:inventory_matches)
          @bid_requests = args[:bid_requests] if args.key?(:bid_requests)
          @responses_with_bids = args[:responses_with_bids] if args.key?(:responses_with_bids)
        end
      end
      
      # The set of metrics that are measured in numbers of bids, representing how
      # many bids were considered eligible at each stage of the bidding funnel.
      class BidMetrics
        include Google::Apis::Core::Hashable
      
        # Not yet implemented; internal-only.
        # The number of bids for which the buyer was billed.
        # Corresponds to the JSON property `billedImpressions`
        # @return [String]
        attr_accessor :billed_impressions
      
        # The number of bids that were permitted to compete in the auction.
        # Corresponds to the JSON property `bidsInAuction`
        # @return [String]
        attr_accessor :bids_in_auction
      
        # The number of bids that won an impression.
        # Corresponds to the JSON property `impressionsWon`
        # @return [String]
        attr_accessor :impressions_won
      
        # Not yet implemented; internal-only.
        # The number of bids for which the corresponding impression was viewable (as
        # defined by Active View).
        # Corresponds to the JSON property `viewableImpressions`
        # @return [String]
        attr_accessor :viewable_impressions
      
        # The timestamp marking the end of the range (exclusive) for which data is
        # included.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The number of bids that Ad Exchange received from the buyer.
        # Corresponds to the JSON property `bids`
        # @return [String]
        attr_accessor :bids
      
        # The timestamp marking the start of the range (inclusive) for which data is
        # included.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billed_impressions = args[:billed_impressions] if args.key?(:billed_impressions)
          @bids_in_auction = args[:bids_in_auction] if args.key?(:bids_in_auction)
          @impressions_won = args[:impressions_won] if args.key?(:impressions_won)
          @viewable_impressions = args[:viewable_impressions] if args.key?(:viewable_impressions)
          @end_time = args[:end_time] if args.key?(:end_time)
          @bids = args[:bids] if args.key?(:bids)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Response message for the
      # list
      # method.
      class ListDbmAdvertisersResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of advertisers.
        # Corresponds to the JSON property `advertisers`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::DbmAdvertiser>]
        attr_accessor :advertisers
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListDbmAdvertisersRequest.pageToken
        # field in the subsequent call to the
        # accounts.advertisers.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertisers = args[:advertisers] if args.key?(:advertisers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Display (HTML) creatives specification to be used with a reservation.
      # Multiple creative snippet sizes can be specified for display creatives.
      # However, in the future, we can add a number of attributes common to all
      # creative snippet sizes.
      class DisplayCreativeSpecification
        include Google::Apis::Core::Hashable
      
        # The sizes of the creatives to be used.
        # Corresponds to the JSON property `creativeDimensions`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CreativeDimensions>]
        attr_accessor :creative_dimensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_dimensions = args[:creative_dimensions] if args.key?(:creative_dimensions)
        end
      end
      
      # A mobile app
      class MobileApp
        include Google::Apis::Core::Hashable
      
        # A deep link to the app in its store.
        # Corresponds to the JSON property `storeUrl`
        # @return [String]
        attr_accessor :store_url
      
        # The app store.
        # Corresponds to the JSON property `appStore`
        # @return [String]
        attr_accessor :app_store
      
        # The localized name of the app.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The localized name of the publisher.
        # Corresponds to the JSON property `publisher`
        # @return [String]
        attr_accessor :publisher
      
        # The icon image url.
        # Corresponds to the JSON property `icon`
        # @return [String]
        attr_accessor :icon
      
        # A token identifying the app within its store. Format depends on the store.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @store_url = args[:store_url] if args.key?(:store_url)
          @app_store = args[:app_store] if args.key?(:app_store)
          @name = args[:name] if args.key?(:name)
          @publisher = args[:publisher] if args.key?(:publisher)
          @icon = args[:icon] if args.key?(:icon)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Response message for listing all reasons that bid responses were considered
      # to have no applicable bids.
      class ListResponsesWithoutBidsResponse
        include Google::Apis::Core::Hashable
      
        # List of all statuses with their associated impression counts.
        # There is a fixed set of statuses, hence results are not paged.
        # Corresponds to the JSON property `frequencies`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ResponsesWithoutBidsStatusFrequency>]
        attr_accessor :frequencies
      
        # The timestamp marking the end of the range (exclusive) for which data is
        # included.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The timestamp marking the start of the range (inclusive) for which data is
        # included.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequencies = args[:frequencies] if args.key?(:frequencies)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Message to store a PScore for targeting. PScore represents premium placements
      # based on Google's internal scoring system, as defined at go/top-content.
      # A single PScore message can represent the top N Android apps, iOS apps, or
      # domains. Including PScores for both apps and web sites is not supported.
      class TopPlacements
        include Google::Apis::Core::Hashable
      
        # Number of top scoring placements to include.
        # Corresponds to the JSON property `placementCount`
        # @return [String]
        attr_accessor :placement_count
      
        # The type of placement for which to include the top N premium sites/apps.
        # Corresponds to the JSON property `placementType`
        # @return [String]
        attr_accessor :placement_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @placement_count = args[:placement_count] if args.key?(:placement_count)
          @placement_type = args[:placement_type] if args.key?(:placement_type)
        end
      end
      
      # Response message for the
      # publisherAssociations.list
      # method.
      class ListPublisherAssociationsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListPublisherAssociationsRequest.pageToken
        # field in the subsequent call to the
        # publisherAssociations.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Publisher associations that a given Exchange Bidding partner has,
        # subject to pagination.
        # Corresponds to the JSON property `publisherAssociations`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::PublisherAssociation>]
        attr_accessor :publisher_associations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @publisher_associations = args[:publisher_associations] if args.key?(:publisher_associations)
        end
      end
      
      # Message to store the demographics targeting. Right now we only allow a single
      # set of age groups and a single set of genders. Forecasting supports more
      # specific targeting (Males age 25-35 + Females age 35-45 for example). We may
      # support repeated Demographics if we change the targeting widget.
      class Demographics
        include Google::Apis::Core::Hashable
      
        # The genders that are targeted. If empty target all genders.
        # Corresponds to the JSON property `genders`
        # @return [Array<String>]
        attr_accessor :genders
      
        # The age groups that are targeted. If empty target all age groups.
        # Corresponds to the JSON property `ageGroups`
        # @return [Array<String>]
        attr_accessor :age_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @genders = args[:genders] if args.key?(:genders)
          @age_groups = args[:age_groups] if args.key?(:age_groups)
        end
      end
      
      # A complete description of reservation terms including price, to be returned
      # as a quote that the user can accept.
      class PricingQuote
        include Google::Apis::Core::Hashable
      
        # A globally unique identifier to refer back to this quote in order
        # to create a new reservation. A given quote identifier will always refer
        # to the same quote.
        # Corresponds to the JSON property `quoteId`
        # @return [String]
        attr_accessor :quote_id
      
        # The number of impressions guaranteed for the reservation booked based
        # on this quote.
        # The value of this field is ignored in create reservation operations.
        # Corresponds to the JSON property `impressions`
        # @return [String]
        attr_accessor :impressions
      
        # All the terms describing a reservation, except the pricing. To be sent as
        # the request for a price quote.
        # Corresponds to the JSON property `reservationTerms`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ReservationTerms]
        attr_accessor :reservation_terms
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `cpm`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Money]
        attr_accessor :cpm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quote_id = args[:quote_id] if args.key?(:quote_id)
          @impressions = args[:impressions] if args.key?(:impressions)
          @reservation_terms = args[:reservation_terms] if args.key?(:reservation_terms)
          @cpm = args[:cpm] if args.key?(:cpm)
        end
      end
      
      # An absolute date range, specified by its start date and end date.
      # The supported range of dates begins 30 days before today and ends today.
      # Validity checked upon filter set creation. If a filter set with an absolute
      # date range is run at a later date more than 30 days after start_date, it will
      # fail.
      class AbsoluteDateRange
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Date]
        attr_accessor :end_date
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # Information about the buyer's creatives to be used in pricing a reservation.
      class CreativeInfo
        include Google::Apis::Core::Hashable
      
        # The destination url when a viewer clicks a creative.
        # Corresponds to the JSON property `destinationUrl`
        # @return [String]
        attr_accessor :destination_url
      
        # Display (HTML) creatives specification to be used with a reservation.
        # Multiple creative snippet sizes can be specified for display creatives.
        # However, in the future, we can add a number of attributes common to all
        # creative snippet sizes.
        # Corresponds to the JSON property `displayCreative`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::DisplayCreativeSpecification]
        attr_accessor :display_creative
      
        # Video creative specification to be used with a reservation.
        # Corresponds to the JSON property `videoCreative`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::VideoCreativeSpecification]
        attr_accessor :video_creative
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_url = args[:destination_url] if args.key?(:destination_url)
          @display_creative = args[:display_creative] if args.key?(:display_creative)
          @video_creative = args[:video_creative] if args.key?(:video_creative)
        end
      end
      
      # A request for associating a deal and a creative.
      class AddDealAssociationRequest
        include Google::Apis::Core::Hashable
      
        # The association between a creative and a deal.
        # Corresponds to the JSON property `association`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation]
        attr_accessor :association
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @association = args[:association] if args.key?(:association)
        end
      end
      
      # A client entity represents either an agency, a brand, or an advertiser.
      class ClientEntity
        include Google::Apis::Core::Hashable
      
        # The type of the client entity: `ADVERTISER`, `BRAND`, or `AGENCY`.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # The name of the entity. This field is automatically fetched based on
        # the type and ID.
        # The value of this field is ignored in create and update operations.
        # Corresponds to the JSON property `entityName`
        # @return [String]
        attr_accessor :entity_name
      
        # Numerical identifier of the client entity.
        # The entity can be an advertiser, a brand, or an agency.
        # This identifier is unique among all the entities with the same type.
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @entity_name = args[:entity_name] if args.key?(:entity_name)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
        end
      end
      
      # Information about the DoubleClick publisher network name helpful to know
      # prior to creating Exchange Bidder to publisher associations.
      class PublisherName
        include Google::Apis::Core::Hashable
      
        # Publisher network display name.
        # Corresponds to the JSON property `networkDisplayName`
        # @return [String]
        attr_accessor :network_display_name
      
        # Network code of the publisher.
        # Corresponds to the JSON property `networkCode`
        # @return [String]
        attr_accessor :network_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_display_name = args[:network_display_name] if args.key?(:network_display_name)
          @network_code = args[:network_code] if args.key?(:network_code)
        end
      end
      
      # A request for watching changes to creative Status.
      class WatchCreativeRequest
        include Google::Apis::Core::Hashable
      
        # The Pub/Sub topic to publish notifications to.
        # This topic must already exist and must give permission to
        # ad-exchange-buyside-reports@google.com to write to the topic.
        # This should be the full resource name in
        # "projects/`project_id`/topics/`topic_id`" format.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # A relative date range, specified by an offset and a duration.
      # The supported range of dates begins 30 days before today and ends today.
      # I.e. the limits for these values are:
      # offset_days >= 0
      # duration_days >= 1
      # offset_days + duration_days <= 30
      class RelativeDateRange
        include Google::Apis::Core::Hashable
      
        # The end date of the filter set, specified as the number of days before
        # today. E.g. for a range where the last date is today, 0.
        # Corresponds to the JSON property `offsetDays`
        # @return [Fixnum]
        attr_accessor :offset_days
      
        # The number of days in the requested date range. E.g. for a range spanning
        # today, 1. For a range spanning the last 7 days, 7.
        # Corresponds to the JSON property `durationDays`
        # @return [Fixnum]
        attr_accessor :duration_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @offset_days = args[:offset_days] if args.key?(:offset_days)
          @duration_days = args[:duration_days] if args.key?(:duration_days)
        end
      end
      
      # The number of bids, among those with a given creative status, that had the
      # specified detail.
      class DetailFrequency
        include Google::Apis::Core::Hashable
      
        # The ID of the detail. The associated value can be looked up in the
        # dictionary file corresponding to the DetailType in the response message.
        # Corresponds to the JSON property `detailId`
        # @return [Fixnum]
        attr_accessor :detail_id
      
        # The number of bids associated with the specified detail.
        # Corresponds to the JSON property `bidCount`
        # @return [String]
        attr_accessor :bid_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail_id = args[:detail_id] if args.key?(:detail_id)
          @bid_count = args[:bid_count] if args.key?(:bid_count)
        end
      end
      
      # The number of impressions for which the corresponding callouts had the
      # specified status.
      class CalloutStatusFrequency
        include Google::Apis::Core::Hashable
      
        # The number of impressions associated with the specified status.
        # Corresponds to the JSON property `impressionCount`
        # @return [String]
        attr_accessor :impression_count
      
        # The ID of the callout status.
        # See callout-status-codes.
        # Corresponds to the JSON property `calloutStatusId`
        # @return [Fixnum]
        attr_accessor :callout_status_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @impression_count = args[:impression_count] if args.key?(:impression_count)
          @callout_status_id = args[:callout_status_id] if args.key?(:callout_status_id)
        end
      end
      
      # 
      class ListClientsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListClientsRequest.pageToken
        # field in the subsequent call to the
        # accounts.clients.list method
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned list of clients.
        # Corresponds to the JSON property `clients`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Client>]
        attr_accessor :clients
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @clients = args[:clients] if args.key?(:clients)
        end
      end
      
      # Native content for a creative.
      class NativeContent
        include Google::Apis::Core::Hashable
      
        # The URL to the app store to purchase/download the promoted app.
        # Corresponds to the JSON property `storeUrl`
        # @return [String]
        attr_accessor :store_url
      
        # A short title for the ad.
        # Corresponds to the JSON property `headline`
        # @return [String]
        attr_accessor :headline
      
        # An image resource. You may provide a larger image than was requested,
        # so long as the aspect ratio is preserved.
        # Corresponds to the JSON property `appIcon`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Image]
        attr_accessor :app_icon
      
        # A label for the button that the user is supposed to click.
        # Corresponds to the JSON property `callToAction`
        # @return [String]
        attr_accessor :call_to_action
      
        # A long description of the ad.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # The app rating in the app store. Must be in the range [0-5].
        # Corresponds to the JSON property `starRating`
        # @return [Float]
        attr_accessor :star_rating
      
        # The URL to fetch a native video ad.
        # Corresponds to the JSON property `videoUrl`
        # @return [String]
        attr_accessor :video_url
      
        # The URL that the browser/SDK will load when the user clicks the ad.
        # Corresponds to the JSON property `clickLinkUrl`
        # @return [String]
        attr_accessor :click_link_url
      
        # An image resource. You may provide a larger image than was requested,
        # so long as the aspect ratio is preserved.
        # Corresponds to the JSON property `logo`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Image]
        attr_accessor :logo
      
        # The price of the promoted app including currency info.
        # Corresponds to the JSON property `priceDisplayText`
        # @return [String]
        attr_accessor :price_display_text
      
        # An image resource. You may provide a larger image than was requested,
        # so long as the aspect ratio is preserved.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Image]
        attr_accessor :image
      
        # The URL to use for click tracking.
        # Corresponds to the JSON property `clickTrackingUrl`
        # @return [String]
        attr_accessor :click_tracking_url
      
        # The name of the advertiser or sponsor, to be displayed in the ad creative.
        # Corresponds to the JSON property `advertiserName`
        # @return [String]
        attr_accessor :advertiser_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @store_url = args[:store_url] if args.key?(:store_url)
          @headline = args[:headline] if args.key?(:headline)
          @app_icon = args[:app_icon] if args.key?(:app_icon)
          @call_to_action = args[:call_to_action] if args.key?(:call_to_action)
          @body = args[:body] if args.key?(:body)
          @star_rating = args[:star_rating] if args.key?(:star_rating)
          @video_url = args[:video_url] if args.key?(:video_url)
          @click_link_url = args[:click_link_url] if args.key?(:click_link_url)
          @logo = args[:logo] if args.key?(:logo)
          @price_display_text = args[:price_display_text] if args.key?(:price_display_text)
          @image = args[:image] if args.key?(:image)
          @click_tracking_url = args[:click_tracking_url] if args.key?(:click_tracking_url)
          @advertiser_name = args[:advertiser_name] if args.key?(:advertiser_name)
        end
      end
      
      # The serving context for this restriction.
      class ServingContext
        include Google::Apis::Core::Hashable
      
        # @OutputOnly The app type the restriction applies to for mobile device.
        # Corresponds to the JSON property `appType`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::AppContext]
        attr_accessor :app_type
      
        # @OutputOnly A security context.
        # Corresponds to the JSON property `securityType`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::SecurityContext]
        attr_accessor :security_type
      
        # @OutputOnly The type of platform the restriction applies to.
        # Corresponds to the JSON property `platform`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::PlatformContext]
        attr_accessor :platform
      
        # @OutputOnly The Geo criteria the restriction applies to.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::LocationContext]
        attr_accessor :location
      
        # @OutputOnly The auction type the restriction applies to.
        # Corresponds to the JSON property `auctionType`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::AuctionContext]
        attr_accessor :auction_type
      
        # Matches all contexts.
        # Corresponds to the JSON property `all`
        # @return [String]
        attr_accessor :all
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_type = args[:app_type] if args.key?(:app_type)
          @security_type = args[:security_type] if args.key?(:security_type)
          @platform = args[:platform] if args.key?(:platform)
          @location = args[:location] if args.key?(:location)
          @auction_type = args[:auction_type] if args.key?(:auction_type)
          @all = args[:all] if args.key?(:all)
        end
      end
      
      # An image resource. You may provide a larger image than was requested,
      # so long as the aspect ratio is preserved.
      class Image
        include Google::Apis::Core::Hashable
      
        # Image height in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Image width in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        # The URL of the image.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @width = args[:width] if args.key?(:width)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Represents an association between a DoubleClick Exchange Bidding partner and
      # a DoubleClick publisher - that is, a contractual relationship between
      # the two entities allowing a given publisher to create yield groups in the
      # DoubleClick for Publishers UI that use a given exchange as the demand source.
      class PublisherAssociation
        include Google::Apis::Core::Hashable
      
        # Network code of the publisher that is a party in the association.
        # Corresponds to the JSON property `publisherNetworkCode`
        # @return [String]
        attr_accessor :publisher_network_code
      
        # An account ID of the Exchange Bidding partner that is a party in the
        # association. The value of this field is ignored in create operations.
        # Corresponds to the JSON property `exchangeAccountId`
        # @return [String]
        attr_accessor :exchange_account_id
      
        # Display name of the publisher network that is a party in the association.
        # The value of this field is ignored in create operations.
        # Corresponds to the JSON property `publisherNetworkDisplayName`
        # @return [String]
        attr_accessor :publisher_network_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @publisher_network_code = args[:publisher_network_code] if args.key?(:publisher_network_code)
          @exchange_account_id = args[:exchange_account_id] if args.key?(:exchange_account_id)
          @publisher_network_display_name = args[:publisher_network_display_name] if args.key?(:publisher_network_display_name)
        end
      end
      
      # Response message for listing filter sets.
      class ListFilterSetsResponse
        include Google::Apis::Core::Hashable
      
        # The filter sets belonging to the buyer.
        # Corresponds to the JSON property `filterSets`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::FilterSet>]
        attr_accessor :filter_sets
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListFilterSetsRequest.pageToken
        # field in the subsequent call to the
        # accounts.filterSets.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_sets = args[:filter_sets] if args.key?(:filter_sets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing all reasons that bid responses resulted in an
      # error.
      class ListResponseErrorsResponse
        include Google::Apis::Core::Hashable
      
        # The timestamp marking the end of the range (exclusive) for which data is
        # included.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The timestamp marking the start of the range (inclusive) for which data is
        # included.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # List of all callout status IDs, identifying the error in the bid responses,
        # with their associated impression counts.
        # See callout-status-codes.
        # There is a fixed set of statuses, hence results are not paged.
        # Corresponds to the JSON property `frequencies`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CalloutStatusFrequency>]
        attr_accessor :frequencies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @frequencies = args[:frequencies] if args.key?(:frequencies)
        end
      end
      
      # An invitation for a new client user to get access to the Ad Exchange
      # Buyer UI.
      # All fields are required unless otherwise specified.
      class ClientUserInvitation
        include Google::Apis::Core::Hashable
      
        # The unique numerical account ID for the sponsor buyer who created
        # the client buyer this invited user will have access to.
        # The value of this field is ignored in create and update operations.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Numerical account ID of the client buyer
        # that the invited user is associated with.
        # The value of this field is ignored in create operations.
        # Corresponds to the JSON property `clientAccountId`
        # @return [String]
        attr_accessor :client_account_id
      
        # The unique numerical ID of the invitation that is sent to the user.
        # The value of this field is ignored in create operations.
        # Corresponds to the JSON property `invitationId`
        # @return [String]
        attr_accessor :invitation_id
      
        # The email address to which the invitation is sent. Email
        # addresses should be unique among all client users under each sponsor
        # buyer.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @invitation_id = args[:invitation_id] if args.key?(:invitation_id)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # 
      class ListClientUserInvitationsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListClientUserInvitationsRequest.pageToken
        # field in the subsequent call to the
        # clients.invitations.list
        # method to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned list of client users.
        # Corresponds to the JSON property `invitations`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation>]
        attr_accessor :invitations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @invitations = args[:invitations] if args.key?(:invitations)
        end
      end
      
      # 
      class ListClientUsersResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of client users.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ClientUser>]
        attr_accessor :users
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListClientUsersRequest.pageToken
        # field in the subsequent call to the
        # clients.invitations.list
        # method to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @users = args[:users] if args.key?(:users)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing all details associated with a given filtered bid
      # reason.
      class ListCreativeStatusBreakdownByDetailResponse
        include Google::Apis::Core::Hashable
      
        # The timestamp marking the end of the range (exclusive) for which data is
        # included.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The timestamp marking the start of the range (inclusive) for which data is
        # included.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The ID of the creative status that identifies the reason the bid was
        # filtered before the auction.
        # See creative-status-codes.
        # Corresponds to the JSON property `creativeStatusId`
        # @return [Fixnum]
        attr_accessor :creative_status_id
      
        # List of all detail IDs with their associated bid counts.
        # There is a fixed set of details, hence results are not paged.
        # Corresponds to the JSON property `frequencies`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::DetailFrequency>]
        attr_accessor :frequencies
      
        # The type of detail that the detail IDs represent.
        # Corresponds to the JSON property `detailType`
        # @return [String]
        attr_accessor :detail_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @creative_status_id = args[:creative_status_id] if args.key?(:creative_status_id)
          @frequencies = args[:frequencies] if args.key?(:frequencies)
          @detail_type = args[:detail_type] if args.key?(:detail_type)
        end
      end
      
      # @OutputOnly The Geo criteria the restriction applies to.
      class LocationContext
        include Google::Apis::Core::Hashable
      
        # IDs representing the geo location for this context.
        # Please refer to the
        # [geo-table.csv](https://storage.googleapis.com/adx-rtb-dictionaries/geo-table.
        # csv)
        # file for different geo criteria IDs.
        # Corresponds to the JSON property `geoCriteriaIds`
        # @return [Array<Fixnum>]
        attr_accessor :geo_criteria_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geo_criteria_ids = args[:geo_criteria_ids] if args.key?(:geo_criteria_ids)
        end
      end
      
      # @OutputOnly The type of platform the restriction applies to.
      class PlatformContext
        include Google::Apis::Core::Hashable
      
        # The platforms this restriction applies to.
        # Corresponds to the JSON property `platforms`
        # @return [Array<String>]
        attr_accessor :platforms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @platforms = args[:platforms] if args.key?(:platforms)
        end
      end
      
      # The number of impressions filtered due to the specified status.
      class FilteredImpressionStatusFrequency
        include Google::Apis::Core::Hashable
      
        # The number of impressions associated with the specified status.
        # Corresponds to the JSON property `impressionCount`
        # @return [String]
        attr_accessor :impression_count
      
        # The status for which impressions were filtered.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @impression_count = args[:impression_count] if args.key?(:impression_count)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # A client user is created under a client buyer and has restricted access to
      # the Ad Exchange Marketplace and certain other sections
      # of the Ad Exchange Buyer UI based on the role
      # granted to the associated client buyer.
      # The only way a new client user can be created is via accepting an
      # email invitation
      # (see the
      # accounts.clients.invitations.create
      # method).
      # All fields are required unless otherwise specified.
      class ClientUser
        include Google::Apis::Core::Hashable
      
        # The unique numerical account ID for the sponsor buyer who created
        # the client buyer this user has access to.
        # The value of this field is ignored in create and update operations.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Numerical account ID of the client buyer
        # with which the user is associated; the
        # buyer must be a client of the current sponsor buyer.
        # The value of this field is ignored in an update operation.
        # Corresponds to the JSON property `clientAccountId`
        # @return [String]
        attr_accessor :client_account_id
      
        # The status of the client user.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The unique numerical ID of the client user
        # that has accepted an invitation.
        # The value of this field is ignored in an update operation.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # User's email address. The value of this field
        # is ignored in an update operation.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @status = args[:status] if args.key?(:status)
          @user_id = args[:user_id] if args.key?(:user_id)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The 3-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount.
        # The value must be between -999,999,999 and +999,999,999 inclusive.
        # If `units` is positive, `nanos` must be positive or zero.
        # If `units` is zero, `nanos` can be positive, zero, or negative.
        # If `units` is negative, `nanos` must be negative or zero.
        # For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount.
        # For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [String]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # The association between a creative and a deal.
      class CreativeDealAssociation
        include Google::Apis::Core::Hashable
      
        # The account the creative belongs to.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The ID of the creative associated with the deal.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        # The deals ID for the deal or deal group associated with the creative.
        # Corresponds to the JSON property `dealsId`
        # @return [String]
        attr_accessor :deals_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
          @deals_id = args[:deals_id] if args.key?(:deals_id)
        end
      end
      
      # Response message for the
      # list
      # method.
      class ListMobileAppsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListMobileAppsRequest.pageToken
        # field in the subsequent call to the
        # accounts.mobileapps.list
        # method
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned list of mobile apps.
        # Corresponds to the JSON property `mobileApps`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::MobileApp>]
        attr_accessor :mobile_apps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @mobile_apps = args[:mobile_apps] if args.key?(:mobile_apps)
        end
      end
      
      # The targeting the user has chosen, both for quote requests and final
      # reservations.
      class ReservationTargeting
        include Google::Apis::Core::Hashable
      
        # Domain names of included site placements
        # Corresponds to the JSON property `domainNames`
        # @return [Array<String>]
        attr_accessor :domain_names
      
        # Excluded User list ids.
        # Corresponds to the JSON property `excludedUserListIds`
        # @return [Array<String>]
        attr_accessor :excluded_user_list_ids
      
        # Ids of excluded mobile app placements.
        # Corresponds to the JSON property `excludedMobileAppIds`
        # @return [Array<String>]
        attr_accessor :excluded_mobile_app_ids
      
        # Excluded page vertical ids.
        # Corresponds to the JSON property `excludedPageVerticalIds`
        # @return [Array<String>]
        attr_accessor :excluded_page_vertical_ids
      
        # Ids of included mobile app placements.
        # Corresponds to the JSON property `mobileAppIds`
        # @return [Array<String>]
        attr_accessor :mobile_app_ids
      
        # Included geo locations.
        # Corresponds to the JSON property `geoTargetIds`
        # @return [Array<String>]
        attr_accessor :geo_target_ids
      
        # Domain names of excluded site placements.
        # Corresponds to the JSON property `excludedDomainNames`
        # @return [Array<String>]
        attr_accessor :excluded_domain_names
      
        # Excluded geo locations.
        # Corresponds to the JSON property `excludedGeoTargetIds`
        # @return [Array<String>]
        attr_accessor :excluded_geo_target_ids
      
        # Included page vertical ids.
        # Corresponds to the JSON property `pageVerticalIds`
        # @return [Array<String>]
        attr_accessor :page_vertical_ids
      
        # Message to store the demographics targeting. Right now we only allow a single
        # set of age groups and a single set of genders. Forecasting supports more
        # specific targeting (Males age 25-35 + Females age 35-45 for example). We may
        # support repeated Demographics if we change the targeting widget.
        # Corresponds to the JSON property `demographics`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Demographics]
        attr_accessor :demographics
      
        # User's device types to target.
        # Corresponds to the JSON property `deviceTypes`
        # @return [Array<String>]
        attr_accessor :device_types
      
        # PScore allows a user to include top rated content.
        # Corresponds to the JSON property `topPlacements`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::TopPlacements>]
        attr_accessor :top_placements
      
        # Included User list ids.
        # Corresponds to the JSON property `userListIds`
        # @return [Array<String>]
        attr_accessor :user_list_ids
      
        # Included page vertical ids.
        # Corresponds to the JSON property `languageIds`
        # @return [Array<String>]
        attr_accessor :language_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_names = args[:domain_names] if args.key?(:domain_names)
          @excluded_user_list_ids = args[:excluded_user_list_ids] if args.key?(:excluded_user_list_ids)
          @excluded_mobile_app_ids = args[:excluded_mobile_app_ids] if args.key?(:excluded_mobile_app_ids)
          @excluded_page_vertical_ids = args[:excluded_page_vertical_ids] if args.key?(:excluded_page_vertical_ids)
          @mobile_app_ids = args[:mobile_app_ids] if args.key?(:mobile_app_ids)
          @geo_target_ids = args[:geo_target_ids] if args.key?(:geo_target_ids)
          @excluded_domain_names = args[:excluded_domain_names] if args.key?(:excluded_domain_names)
          @excluded_geo_target_ids = args[:excluded_geo_target_ids] if args.key?(:excluded_geo_target_ids)
          @page_vertical_ids = args[:page_vertical_ids] if args.key?(:page_vertical_ids)
          @demographics = args[:demographics] if args.key?(:demographics)
          @device_types = args[:device_types] if args.key?(:device_types)
          @top_placements = args[:top_placements] if args.key?(:top_placements)
          @user_list_ids = args[:user_list_ids] if args.key?(:user_list_ids)
          @language_ids = args[:language_ids] if args.key?(:language_ids)
        end
      end
      
      # A DBM Advertiser.
      class DbmAdvertiser
        include Google::Apis::Core::Hashable
      
        # An ID uniquely identifying an advertiser.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # A localized name for the advertiser.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # @OutputOnly Filtering reasons for this creative during a period of a single
      # day (from midnight to midnight Pacific).
      class FilteringStats
        include Google::Apis::Core::Hashable
      
        # The set of filtering reasons for this date.
        # Corresponds to the JSON property `reasons`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Reason>]
        attr_accessor :reasons
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Date]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reasons = args[:reasons] if args.key?(:reasons)
          @date = args[:date] if args.key?(:date)
        end
      end
      
      # A creative and its classification data.
      class Creative
        include Google::Apis::Core::Hashable
      
        # The account that this creative belongs to.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Native content for a creative.
        # Corresponds to the JSON property `native`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::NativeContent]
        attr_accessor :native
      
        # Video content for a creative.
        # Corresponds to the JSON property `video`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::VideoContent]
        attr_accessor :video
      
        # @OutputOnly The granular status of this ad in specific contexts.
        # A context here relates to where something ultimately serves (for example,
        # a physical location, a platform, an HTTPS vs HTTP request, or the type
        # of auction).
        # Corresponds to the JSON property `servingRestrictions`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ServingRestriction>]
        attr_accessor :serving_restrictions
      
        # The agency ID for this creative.
        # Corresponds to the JSON property `agencyId`
        # @return [String]
        attr_accessor :agency_id
      
        # The set of destination URLs for the creative.
        # Corresponds to the JSON property `clickThroughUrls`
        # @return [Array<String>]
        attr_accessor :click_through_urls
      
        # The link to AdChoices destination page.
        # Corresponds to the JSON property `adChoicesDestinationUrl`
        # @return [String]
        attr_accessor :ad_choices_destination_url
      
        # @OutputOnly Detected sensitive categories, if any.
        # See the ad-sensitive-categories.txt file in the technical documentation for
        # a list of IDs. You should use these IDs along with the
        # excluded-sensitive-category field in the bid request to filter your bids.
        # Corresponds to the JSON property `detectedSensitiveCategories`
        # @return [Array<Fixnum>]
        attr_accessor :detected_sensitive_categories
      
        # All restricted categories for the ads that may be shown from this creative.
        # Corresponds to the JSON property `restrictedCategories`
        # @return [Array<String>]
        attr_accessor :restricted_categories
      
        # @OutputOnly Shows any corrections that were applied to this creative.
        # Corresponds to the JSON property `corrections`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Correction>]
        attr_accessor :corrections
      
        # @OutputOnly The version of this creative.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # All vendor IDs for the ads that may be shown from this creative.
        # See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt
        # for possible values.
        # Corresponds to the JSON property `vendorIds`
        # @return [Array<Fixnum>]
        attr_accessor :vendor_ids
      
        # The set of URLs to be called to record an impression.
        # Corresponds to the JSON property `impressionTrackingUrls`
        # @return [Array<String>]
        attr_accessor :impression_tracking_urls
      
        # HTML content for a creative.
        # Corresponds to the JSON property `html`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::HtmlContent]
        attr_accessor :html
      
        # @OutputOnly Detected product categories, if any.
        # See the ad-product-categories.txt file in the technical documentation
        # for a list of IDs.
        # Corresponds to the JSON property `detectedProductCategories`
        # @return [Array<Fixnum>]
        attr_accessor :detected_product_categories
      
        # @OutputOnly The top-level deals status of this creative.
        # If disapproved, an entry for 'auctionType=DIRECT_DEALS' (or 'ALL') in
        # serving_restrictions will also exist. Note
        # that this may be nuanced with other contextual restrictions, in which case,
        # it may be preferable to read from serving_restrictions directly.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `dealsStatus`
        # @return [String]
        attr_accessor :deals_status
      
        # @OutputOnly The top-level open auction status of this creative.
        # If disapproved, an entry for 'auctionType = OPEN_AUCTION' (or 'ALL') in
        # serving_restrictions will also exist. Note
        # that this may be nuanced with other contextual restrictions, in which case,
        # it may be preferable to read from serving_restrictions directly.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `openAuctionStatus`
        # @return [String]
        attr_accessor :open_auction_status
      
        # The name of the company being advertised in the creative.
        # Corresponds to the JSON property `advertiserName`
        # @return [String]
        attr_accessor :advertiser_name
      
        # @OutputOnly Detected advertiser IDs, if any.
        # Corresponds to the JSON property `detectedAdvertiserIds`
        # @return [Array<String>]
        attr_accessor :detected_advertiser_ids
      
        # @OutputOnly
        # The detected domains for this creative.
        # Corresponds to the JSON property `detectedDomains`
        # @return [Array<String>]
        attr_accessor :detected_domains
      
        # @OutputOnly Filtering reasons for this creative during a period of a single
        # day (from midnight to midnight Pacific).
        # Corresponds to the JSON property `filteringStats`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::FilteringStats]
        attr_accessor :filtering_stats
      
        # All attributes for the ads that may be shown from this creative.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `attributes`
        # @return [Array<String>]
        attr_accessor :attributes
      
        # @OutputOnly The last update timestamp of the creative via API.
        # Corresponds to the JSON property `apiUpdateTime`
        # @return [String]
        attr_accessor :api_update_time
      
        # @OutputOnly
        # The detected languages for this creative. The order is arbitrary. The codes
        # are 2 or 5 characters and are documented at
        # https://developers.google.com/adwords/api/docs/appendix/languagecodes.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<String>]
        attr_accessor :detected_languages
      
        # The buyer-defined creative ID of this creative.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @native = args[:native] if args.key?(:native)
          @video = args[:video] if args.key?(:video)
          @serving_restrictions = args[:serving_restrictions] if args.key?(:serving_restrictions)
          @agency_id = args[:agency_id] if args.key?(:agency_id)
          @click_through_urls = args[:click_through_urls] if args.key?(:click_through_urls)
          @ad_choices_destination_url = args[:ad_choices_destination_url] if args.key?(:ad_choices_destination_url)
          @detected_sensitive_categories = args[:detected_sensitive_categories] if args.key?(:detected_sensitive_categories)
          @restricted_categories = args[:restricted_categories] if args.key?(:restricted_categories)
          @corrections = args[:corrections] if args.key?(:corrections)
          @version = args[:version] if args.key?(:version)
          @vendor_ids = args[:vendor_ids] if args.key?(:vendor_ids)
          @impression_tracking_urls = args[:impression_tracking_urls] if args.key?(:impression_tracking_urls)
          @html = args[:html] if args.key?(:html)
          @detected_product_categories = args[:detected_product_categories] if args.key?(:detected_product_categories)
          @deals_status = args[:deals_status] if args.key?(:deals_status)
          @open_auction_status = args[:open_auction_status] if args.key?(:open_auction_status)
          @advertiser_name = args[:advertiser_name] if args.key?(:advertiser_name)
          @detected_advertiser_ids = args[:detected_advertiser_ids] if args.key?(:detected_advertiser_ids)
          @detected_domains = args[:detected_domains] if args.key?(:detected_domains)
          @filtering_stats = args[:filtering_stats] if args.key?(:filtering_stats)
          @attributes = args[:attributes] if args.key?(:attributes)
          @api_update_time = args[:api_update_time] if args.key?(:api_update_time)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
        end
      end
      
      # Response message for listing all reasons that impressions were filtered (i.e.
      # not considered as an inventory match) for the buyer.
      class ListFilteredImpressionsResponse
        include Google::Apis::Core::Hashable
      
        # List of all statuses identifying the reason the bid request was filtered,
        # with their associated impression counts.
        # There is a fixed set of statuses, hence results are not paged.
        # Corresponds to the JSON property `frequencies`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::FilteredImpressionStatusFrequency>]
        attr_accessor :frequencies
      
        # The timestamp marking the end of the range (exclusive) for which data is
        # included.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The timestamp marking the start of the range (inclusive) for which data is
        # included.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequencies = args[:frequencies] if args.key?(:frequencies)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # A request for removing the association between a deal and a creative.
      class RemoveDealAssociationRequest
        include Google::Apis::Core::Hashable
      
        # The association between a creative and a deal.
        # Corresponds to the JSON property `association`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation]
        attr_accessor :association
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @association = args[:association] if args.key?(:association)
        end
      end
      
      # A client resource represents a client buyer&mdash;an agency,
      # a brand, or an advertiser customer of the sponsor buyer.
      # Users associated with the client buyer have restricted access to
      # the Ad Exchange Marketplace and certain other sections
      # of the Ad Exchange Buyer UI based on the role
      # granted to the client buyer.
      # All fields are required unless otherwise specified.
      class Client
        include Google::Apis::Core::Hashable
      
        # Name used to represent this client to publishers.
        # You may have multiple clients that map to the same entity,
        # but for each client the combination of `clientName` and entity
        # must be unique.
        # You can specify this field as empty.
        # Corresponds to the JSON property `clientName`
        # @return [String]
        attr_accessor :client_name
      
        # The role which is assigned to the client buyer. Each role implies a set of
        # permissions granted to the client. Must be one of `CLIENT_DEAL_VIEWER`,
        # `CLIENT_DEAL_NEGOTIATOR` or `CLIENT_DEAL_APPROVER`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Whether the client buyer will be visible to sellers.
        # Corresponds to the JSON property `visibleToSeller`
        # @return [Boolean]
        attr_accessor :visible_to_seller
        alias_method :visible_to_seller?, :visible_to_seller
      
        # Numerical identifier of the client entity.
        # The entity can be an advertiser, a brand, or an agency.
        # This identifier is unique among all the entities with the same type.
        # A list of all known advertisers with their identifiers is available in the
        # [advertisers.txt](https://storage.googleapis.com/adx-rtb-dictionaries/
        # advertisers.txt)
        # file.
        # A list of all known brands with their identifiers is available in the
        # [brands.txt](https://storage.googleapis.com/adx-rtb-dictionaries/brands.txt)
        # file.
        # A list of all known agencies with their identifiers is available in the
        # [agencies.txt](https://storage.googleapis.com/adx-rtb-dictionaries/agencies.
        # txt)
        # file.
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        # The globally-unique numerical ID of the client.
        # The value of this field is ignored in create and update operations.
        # Corresponds to the JSON property `clientAccountId`
        # @return [String]
        attr_accessor :client_account_id
      
        # The name of the entity. This field is automatically fetched based on
        # the type and ID.
        # The value of this field is ignored in create and update operations.
        # Corresponds to the JSON property `entityName`
        # @return [String]
        attr_accessor :entity_name
      
        # The status of the client buyer.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Optional arbitrary unique identifier of this client from the standpoint of
        # an Ad Exchange buyer partner.
        # This field can be used to lookup client buyers for a given sponsor buyer
        # and allows to verify whether an Ad Exchange counterpart of a given
        # client buyer already exists.
        # If present, must be unique among all the partner client identifiers
        # for a given Ad Exchange sponsor buyer.
        # Corresponds to the JSON property `partnerClientId`
        # @return [String]
        attr_accessor :partner_client_id
      
        # The unique numerical account ID for the buyer of which the client buyer
        # is a customer; the sponsor buyer who created this client buyer.
        # The value of this field is ignored in create and update operations.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The type of the client entity: `ADVERTISER`, `BRAND`, or `AGENCY`.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_name = args[:client_name] if args.key?(:client_name)
          @role = args[:role] if args.key?(:role)
          @visible_to_seller = args[:visible_to_seller] if args.key?(:visible_to_seller)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @entity_name = args[:entity_name] if args.key?(:entity_name)
          @status = args[:status] if args.key?(:status)
          @partner_client_id = args[:partner_client_id] if args.key?(:partner_client_id)
          @account_id = args[:account_id] if args.key?(:account_id)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
        end
      end
      
      # Response message for listing all creatives associated with a given filtered
      # bid reason.
      class ListCreativeStatusBreakdownByCreativeResponse
        include Google::Apis::Core::Hashable
      
        # List of creative IDs with their associated bid counts.
        # Corresponds to the JSON property `frequencies`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CreativeFrequency>]
        attr_accessor :frequencies
      
        # The timestamp marking the end of the range (exclusive) for which data is
        # included.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListCreativeStatusBreakdownByCreativeRequest.pageToken
        # field in the subsequent call to the
        # accounts.filterSets.filteredBids.creatives.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The timestamp marking the start of the range (inclusive) for which data is
        # included.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The ID of the creative status that identifies the reason the bid was
        # filtered before the auction.
        # See creative-status-codes.
        # Corresponds to the JSON property `creativeStatusId`
        # @return [Fixnum]
        attr_accessor :creative_status_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequencies = args[:frequencies] if args.key?(:frequencies)
          @end_time = args[:end_time] if args.key?(:end_time)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @start_time = args[:start_time] if args.key?(:start_time)
          @creative_status_id = args[:creative_status_id] if args.key?(:creative_status_id)
        end
      end
      
      # @OutputOnly Shows any corrections that were applied to this creative.
      class Correction
        include Google::Apis::Core::Hashable
      
        # The type of correction that was applied to the creative.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The contexts for the correction.
        # Corresponds to the JSON property `contexts`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ServingContext>]
        attr_accessor :contexts
      
        # Additional details about what was corrected.
        # Corresponds to the JSON property `details`
        # @return [Array<String>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @contexts = args[:contexts] if args.key?(:contexts)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # A set of filters that is applied to a request for data from the
      # RtbTroubleshootingService. Within a filter set, an AND operation is performed
      # across the filters represented by each field. An OR operation is performed
      # across the filters represented by the multiple values of a repeated field.
      # E.g.
      # "format=VIDEO AND deal_id=12 AND (web_property_id=34 OR web_property_id=56)"
      class FilterSet
        include Google::Apis::Core::Hashable
      
        # A relative date range, specified by an offset and a duration.
        # The supported range of dates begins 30 days before today and ends today.
        # I.e. the limits for these values are:
        # offset_days >= 0
        # duration_days >= 1
        # offset_days + duration_days <= 30
        # Corresponds to the JSON property `relativeDateRange`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::RelativeDateRange]
        attr_accessor :relative_date_range
      
        # The format on which to filter; optional.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # The ID of the deal on which to filter; optional.
        # Corresponds to the JSON property `dealId`
        # @return [String]
        attr_accessor :deal_id
      
        # The account ID of the buyer who owns this filter set.
        # The value of this field is ignored in create operations.
        # Corresponds to the JSON property `filterSetOwnerAccountId`
        # @return [String]
        attr_accessor :filter_set_owner_account_id
      
        # The ID of the filter set; unique within the account of the filter set
        # owner.
        # The value of this field is ignored in create operations.
        # Corresponds to the JSON property `filterSetId`
        # @return [Fixnum]
        attr_accessor :filter_set_id
      
        # The platform on which to filter; optional.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The list of IDs of web properties on which to filter; may be empty.
        # The filters represented by multiple web property IDs are ORed together
        # (i.e. if non-empty, results must match any one of the web properties).
        # Corresponds to the JSON property `webPropertyIds`
        # @return [Array<String>]
        attr_accessor :web_property_ids
      
        # An absolute date range, specified by its start date and end date.
        # The supported range of dates begins 30 days before today and ends today.
        # Validity checked upon filter set creation. If a filter set with an absolute
        # date range is run at a later date more than 30 days after start_date, it will
        # fail.
        # Corresponds to the JSON property `absoluteDateRange`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::AbsoluteDateRange]
        attr_accessor :absolute_date_range
      
        # The ID of the buyer account on which to filter; optional.
        # Corresponds to the JSON property `buyerAccountId`
        # @return [String]
        attr_accessor :buyer_account_id
      
        # The ID of the creative on which to filter; optional.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @relative_date_range = args[:relative_date_range] if args.key?(:relative_date_range)
          @format = args[:format] if args.key?(:format)
          @deal_id = args[:deal_id] if args.key?(:deal_id)
          @filter_set_owner_account_id = args[:filter_set_owner_account_id] if args.key?(:filter_set_owner_account_id)
          @filter_set_id = args[:filter_set_id] if args.key?(:filter_set_id)
          @platform = args[:platform] if args.key?(:platform)
          @web_property_ids = args[:web_property_ids] if args.key?(:web_property_ids)
          @absolute_date_range = args[:absolute_date_range] if args.key?(:absolute_date_range)
          @buyer_account_id = args[:buyer_account_id] if args.key?(:buyer_account_id)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
        end
      end
      
      # A response for listing creative and deal associations
      class ListDealAssociationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of associations.
        # Corresponds to the JSON property `associations`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation>]
        attr_accessor :associations
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListDealAssociationsRequest.page_token
        # field in the subsequent call to 'ListDealAssociation' method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @associations = args[:associations] if args.key?(:associations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # @OutputOnly The reason and details for a disapproval.
      class Disapproval
        include Google::Apis::Core::Hashable
      
        # Additional details about the reason for disapproval.
        # Corresponds to the JSON property `details`
        # @return [Array<String>]
        attr_accessor :details
      
        # The categorized reason for disapproval.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # A request for stopping notifications for changes to creative Status.
      class StopWatchingCreativeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # @OutputOnly A representation of the status of an ad in a
      # specific context. A context here relates to where something ultimately serves
      # (for example, a user or publisher geo, a platform, an HTTPS vs HTTP request,
      # or the type of auction).
      class ServingRestriction
        include Google::Apis::Core::Hashable
      
        # Any disapprovals bound to this restriction.
        # Only present if status=DISAPPROVED.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `disapprovalReasons`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Disapproval>]
        attr_accessor :disapproval_reasons
      
        # The contexts for the restriction.
        # Corresponds to the JSON property `contexts`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ServingContext>]
        attr_accessor :contexts
      
        # The status of the creative in this context (for example, it has been
        # explicitly disapproved or is pending review).
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disapproval_reasons = args[:disapproval_reasons] if args.key?(:disapproval_reasons)
          @contexts = args[:contexts] if args.key?(:contexts)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Represents a whole calendar date, e.g. date of birth. The time of day and
      # time zone are either specified elsewhere or are not significant. The date
      # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
      # represent a year and month where the day is not significant, e.g. credit card
      # expiration date. The year may be 0 to represent a month and day independent
      # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
      # and `google.protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Year of date. Must be from 1 to 9999, or 0 if specifying a date without
        # a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0
        # if specifying a year/month where the day is not significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of year. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @year = args[:year] if args.key?(:year)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
        end
      end
      
      # Response message for the
      # list
      # method.
      class ListClientEntitiesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListClientEntitiesRequest.pageToken
        # field in the subsequent call to the
        # cliententities.list method
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned list of clients.
        # Corresponds to the JSON property `clientEntities`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ClientEntity>]
        attr_accessor :client_entities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @client_entities = args[:client_entities] if args.key?(:client_entities)
        end
      end
      
      # All the terms describing a reservation, except the pricing. To be sent as
      # the request for a price quote.
      class ReservationTerms
        include Google::Apis::Core::Hashable
      
        # The targeting the user has chosen, both for quote requests and final
        # reservations.
        # Corresponds to the JSON property `targeting`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ReservationTargeting]
        attr_accessor :targeting
      
        # The impression goal.
        # Corresponds to the JSON property `impressionGoal`
        # @return [String]
        attr_accessor :impression_goal
      
        # Frequency cap.
        # Corresponds to the JSON property `frequencyCap`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::FrequencyCap]
        attr_accessor :frequency_cap
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Date]
        attr_accessor :end_date
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `budgetGoal`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Money]
        attr_accessor :budget_goal
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Date]
        attr_accessor :start_date
      
        # Information about the buyer's creatives to be used in pricing a reservation.
        # Corresponds to the JSON property `creativeInfo`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::CreativeInfo]
        attr_accessor :creative_info
      
        # The advertiser for this quote/reservation.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # A name to help the user track this quote/reservation.
        # Corresponds to the JSON property `reservationName`
        # @return [String]
        attr_accessor :reservation_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @targeting = args[:targeting] if args.key?(:targeting)
          @impression_goal = args[:impression_goal] if args.key?(:impression_goal)
          @frequency_cap = args[:frequency_cap] if args.key?(:frequency_cap)
          @end_date = args[:end_date] if args.key?(:end_date)
          @budget_goal = args[:budget_goal] if args.key?(:budget_goal)
          @start_date = args[:start_date] if args.key?(:start_date)
          @creative_info = args[:creative_info] if args.key?(:creative_info)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @reservation_name = args[:reservation_name] if args.key?(:reservation_name)
        end
      end
      
      # A generic target message. This represents an available target.
      class Target
        include Google::Apis::Core::Hashable
      
        # An optional id representing the parent Target. This is for targets that are
        # structured hierarchically, such as page vertical. Will be absent on top
        # level items. Flat lists are just all top-level items.
        # Corresponds to the JSON property `parentId`
        # @return [String]
        attr_accessor :parent_id
      
        # Indicates whether this target has at least one child target for the cases
        # of hierarchical targets (geographies and similar ones).
        # The Guaranteed Packages UI needs to know whether any given node at any
        # level of the targeting hierarchy is expandable further, or whether
        # it is a leaf node, without having to perform extra RPCs / pre-fetch
        # all of the children of a given node.
        # Corresponds to the JSON property `hasChildren`
        # @return [Boolean]
        attr_accessor :has_children
        alias_method :has_children?, :has_children
      
        # Localized name of target.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An ID to pass back as part of the targeting.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent_id = args[:parent_id] if args.key?(:parent_id)
          @has_children = args[:has_children] if args.key?(:has_children)
          @name = args[:name] if args.key?(:name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Frequency cap.
      class FrequencyCap
        include Google::Apis::Core::Hashable
      
        # The maximum number of impressions that can be served to a user within the
        # specified time period.
        # Corresponds to the JSON property `maxImpressions`
        # @return [Fixnum]
        attr_accessor :max_impressions
      
        # The time unit. Along with num_time_units defines the amount of time over
        # which impressions per user are counted and capped.
        # Corresponds to the JSON property `timeUnitType`
        # @return [String]
        attr_accessor :time_unit_type
      
        # The amount of time, in the units specified by time_unit_type. Defines the
        # amount of time over which impressions per user are counted and capped.
        # Corresponds to the JSON property `numTimeUnits`
        # @return [Fixnum]
        attr_accessor :num_time_units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_impressions = args[:max_impressions] if args.key?(:max_impressions)
          @time_unit_type = args[:time_unit_type] if args.key?(:time_unit_type)
          @num_time_units = args[:num_time_units] if args.key?(:num_time_units)
        end
      end
    end
  end
end
