# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf'

module Pulsar
  module Proto
    ::Protobuf::Optionable.inject(self) { ::Google::Protobuf::FileOptions }

    ##
    # Enum Classes
    #
    class CompressionType < ::Protobuf::Enum
      define :NONE, 0
      define :LZ4, 1
      define :ZLIB, 2
      define :ZSTD, 3
      define :SNAPPY, 4
    end

    class ProducerAccessMode < ::Protobuf::Enum
      define :SHARED, 0
      define :EXCLUSIVE, 1
      define :WAITFOREXCLUSIVE, 2
      define :EXCLUSIVEWITHFENCING, 3
    end

    class ServerError < ::Protobuf::Enum
      define :UNKNOWNERROR, 0
      define :METADATAERROR, 1
      define :PERSISTENCEERROR, 2
      define :AUTHENTICATIONERROR, 3
      define :AUTHORIZATIONERROR, 4
      define :CONSUMERBUSY, 5
      define :SERVICENOTREADY, 6
      define :PRODUCERBLOCKEDQUOTAEXCEEDEDERROR, 7
      define :PRODUCERBLOCKEDQUOTAEXCEEDEDEXCEPTION, 8
      define :CHECKSUMERROR, 9
      define :UNSUPPORTEDVERSIONERROR, 10
      define :TOPICNOTFOUND, 11
      define :SUBSCRIPTIONNOTFOUND, 12
      define :CONSUMERNOTFOUND, 13
      define :TOOMANYREQUESTS, 14
      define :TOPICTERMINATEDERROR, 15
      define :PRODUCERBUSY, 16
      define :INVALIDTOPICNAME, 17
      define :INCOMPATIBLESCHEMA, 18
      define :CONSUMERASSIGNERROR, 19
      define :TRANSACTIONCOORDINATORNOTFOUND, 20
      define :INVALIDTXNSTATUS, 21
      define :NOTALLOWEDERROR, 22
      define :TRANSACTIONCONFLICT, 23
      define :TRANSACTIONNOTFOUND, 24
      define :PRODUCERFENCED, 25
    end

    class AuthMethod < ::Protobuf::Enum
      define :AUTHMETHODNONE, 0
      define :AUTHMETHODYCAV1, 1
      define :AUTHMETHODATHENS, 2
    end

    class ProtocolVersion < ::Protobuf::Enum
      define :V0, 0
      define :V1, 1
      define :V2, 2
      define :V3, 3
      define :V4, 4
      define :V5, 5
      define :V6, 6
      define :V7, 7
      define :V8, 8
      define :V9, 9
      define :V10, 10
      define :V11, 11
      define :V12, 12
      define :V13, 13
      define :V14, 14
      define :V15, 15
      define :V16, 16
      define :V17, 17
      define :V18, 18
      define :V19, 19
    end

    class KeySharedMode < ::Protobuf::Enum
      define :AUTO_SPLIT, 0
      define :STICKY, 1
    end

    class TxnAction < ::Protobuf::Enum
      define :COMMIT, 0
      define :ABORT, 1
    end


    ##
    # Message Classes
    #
    class Schema < ::Protobuf::Message
      class Type < ::Protobuf::Enum
        define :NONE, 0
        define :STRING, 1
        define :JSON, 2
        define :PROTOBUF, 3
        define :AVRO, 4
        define :BOOL, 5
        define :INT8, 6
        define :INT16, 7
        define :INT32, 8
        define :INT64, 9
        define :FLOAT, 10
        define :DOUBLE, 11
        define :DATE, 12
        define :TIME, 13
        define :TIMESTAMP, 14
        define :KEYVALUE, 15
        define :INSTANT, 16
        define :LOCALDATE, 17
        define :LOCALTIME, 18
        define :LOCALDATETIME, 19
        define :PROTOBUFNATIVE, 20
      end

    end

    class MessageIdData < ::Protobuf::Message; end
    class KeyValue < ::Protobuf::Message; end
    class KeyLongValue < ::Protobuf::Message; end
    class IntRange < ::Protobuf::Message; end
    class EncryptionKeys < ::Protobuf::Message; end
    class MessageMetadata < ::Protobuf::Message; end
    class SingleMessageMetadata < ::Protobuf::Message; end
    class BrokerEntryMetadata < ::Protobuf::Message; end
    class CommandConnect < ::Protobuf::Message; end
    class FeatureFlags < ::Protobuf::Message; end
    class CommandConnected < ::Protobuf::Message; end
    class CommandAuthResponse < ::Protobuf::Message; end
    class CommandAuthChallenge < ::Protobuf::Message; end
    class AuthData < ::Protobuf::Message; end
    class KeySharedMeta < ::Protobuf::Message; end
    class CommandSubscribe < ::Protobuf::Message
      class SubType < ::Protobuf::Enum
        define :EXCLUSIVE, 0
        define :SHARED, 1
        define :FAILOVER, 2
        define :KEY_SHARED, 3
      end

      class InitialPosition < ::Protobuf::Enum
        define :LATEST, 0
        define :EARLIEST, 1
      end

    end

    class CommandPartitionedTopicMetadata < ::Protobuf::Message; end
    class CommandPartitionedTopicMetadataResponse < ::Protobuf::Message
      class LookupType < ::Protobuf::Enum
        define :SUCCESS, 0
        define :FAILED, 1
      end

    end

    class CommandLookupTopic < ::Protobuf::Message; end
    class CommandLookupTopicResponse < ::Protobuf::Message
      class LookupType < ::Protobuf::Enum
        define :REDIRECT, 0
        define :CONNECT, 1
        define :FAILED, 2
      end

    end

    class CommandProducer < ::Protobuf::Message; end
    class CommandSend < ::Protobuf::Message; end
    class CommandSendReceipt < ::Protobuf::Message; end
    class CommandSendError < ::Protobuf::Message; end
    class CommandMessage < ::Protobuf::Message; end
    class CommandAck < ::Protobuf::Message
      class AckType < ::Protobuf::Enum
        define :INDIVIDUAL, 0
        define :CUMULATIVE, 1
      end

      class ValidationError < ::Protobuf::Enum
        define :UNCOMPRESSEDSIZECORRUPTION, 0
        define :DECOMPRESSIONERROR, 1
        define :CHECKSUMMISMATCH, 2
        define :BATCHDESERIALIZEERROR, 3
        define :DECRYPTIONERROR, 4
      end

    end

    class CommandAckResponse < ::Protobuf::Message; end
    class CommandActiveConsumerChange < ::Protobuf::Message; end
    class CommandFlow < ::Protobuf::Message; end
    class CommandUnsubscribe < ::Protobuf::Message; end
    class CommandSeek < ::Protobuf::Message; end
    class CommandReachedEndOfTopic < ::Protobuf::Message; end
    class CommandCloseProducer < ::Protobuf::Message; end
    class CommandCloseConsumer < ::Protobuf::Message; end
    class CommandRedeliverUnacknowledgedMessages < ::Protobuf::Message; end
    class CommandSuccess < ::Protobuf::Message; end
    class CommandProducerSuccess < ::Protobuf::Message; end
    class CommandError < ::Protobuf::Message; end
    class CommandPing < ::Protobuf::Message; end
    class CommandPong < ::Protobuf::Message; end
    class CommandConsumerStats < ::Protobuf::Message; end
    class CommandConsumerStatsResponse < ::Protobuf::Message; end
    class CommandGetLastMessageId < ::Protobuf::Message; end
    class CommandGetLastMessageIdResponse < ::Protobuf::Message; end
    class CommandGetTopicsOfNamespace < ::Protobuf::Message
      class Mode < ::Protobuf::Enum
        define :PERSISTENT, 0
        define :NON_PERSISTENT, 1
        define :ALL, 2
      end

    end

    class CommandGetTopicsOfNamespaceResponse < ::Protobuf::Message; end
    class CommandWatchTopicList < ::Protobuf::Message; end
    class CommandWatchTopicListSuccess < ::Protobuf::Message; end
    class CommandWatchTopicUpdate < ::Protobuf::Message; end
    class CommandWatchTopicListClose < ::Protobuf::Message; end
    class CommandGetSchema < ::Protobuf::Message; end
    class CommandGetSchemaResponse < ::Protobuf::Message; end
    class CommandGetOrCreateSchema < ::Protobuf::Message; end
    class CommandGetOrCreateSchemaResponse < ::Protobuf::Message; end
    class CommandTcClientConnectRequest < ::Protobuf::Message; end
    class CommandTcClientConnectResponse < ::Protobuf::Message; end
    class CommandNewTxn < ::Protobuf::Message; end
    class CommandNewTxnResponse < ::Protobuf::Message; end
    class CommandAddPartitionToTxn < ::Protobuf::Message; end
    class CommandAddPartitionToTxnResponse < ::Protobuf::Message; end
    class Subscription < ::Protobuf::Message; end
    class CommandAddSubscriptionToTxn < ::Protobuf::Message; end
    class CommandAddSubscriptionToTxnResponse < ::Protobuf::Message; end
    class CommandEndTxn < ::Protobuf::Message; end
    class CommandEndTxnResponse < ::Protobuf::Message; end
    class CommandEndTxnOnPartition < ::Protobuf::Message; end
    class CommandEndTxnOnPartitionResponse < ::Protobuf::Message; end
    class CommandEndTxnOnSubscription < ::Protobuf::Message; end
    class CommandEndTxnOnSubscriptionResponse < ::Protobuf::Message; end
    class BaseCommand < ::Protobuf::Message
      class Type < ::Protobuf::Enum
        define :CONNECT, 2
        define :CONNECTED, 3
        define :SUBSCRIBE, 4
        define :PRODUCER, 5
        define :SEND, 6
        define :SEND_RECEIPT, 7
        define :SEND_ERROR, 8
        define :MESSAGE, 9
        define :ACK, 10
        define :FLOW, 11
        define :UNSUBSCRIBE, 12
        define :SUCCESS, 13
        define :ERROR, 14
        define :CLOSE_PRODUCER, 15
        define :CLOSE_CONSUMER, 16
        define :PRODUCER_SUCCESS, 17
        define :PING, 18
        define :PONG, 19
        define :REDELIVER_UNACKNOWLEDGED_MESSAGES, 20
        define :PARTITIONED_METADATA, 21
        define :PARTITIONED_METADATA_RESPONSE, 22
        define :LOOKUP, 23
        define :LOOKUP_RESPONSE, 24
        define :CONSUMER_STATS, 25
        define :CONSUMER_STATS_RESPONSE, 26
        define :REACHED_END_OF_TOPIC, 27
        define :SEEK, 28
        define :GET_LAST_MESSAGE_ID, 29
        define :GET_LAST_MESSAGE_ID_RESPONSE, 30
        define :ACTIVE_CONSUMER_CHANGE, 31
        define :GET_TOPICS_OF_NAMESPACE, 32
        define :GET_TOPICS_OF_NAMESPACE_RESPONSE, 33
        define :GET_SCHEMA, 34
        define :GET_SCHEMA_RESPONSE, 35
        define :AUTH_CHALLENGE, 36
        define :AUTH_RESPONSE, 37
        define :ACK_RESPONSE, 38
        define :GET_OR_CREATE_SCHEMA, 39
        define :GET_OR_CREATE_SCHEMA_RESPONSE, 40
        define :NEW_TXN, 50
        define :NEW_TXN_RESPONSE, 51
        define :ADD_PARTITION_TO_TXN, 52
        define :ADD_PARTITION_TO_TXN_RESPONSE, 53
        define :ADD_SUBSCRIPTION_TO_TXN, 54
        define :ADD_SUBSCRIPTION_TO_TXN_RESPONSE, 55
        define :END_TXN, 56
        define :END_TXN_RESPONSE, 57
        define :END_TXN_ON_PARTITION, 58
        define :END_TXN_ON_PARTITION_RESPONSE, 59
        define :END_TXN_ON_SUBSCRIPTION, 60
        define :END_TXN_ON_SUBSCRIPTION_RESPONSE, 61
        define :TC_CLIENT_CONNECT_REQUEST, 62
        define :TC_CLIENT_CONNECT_RESPONSE, 63
        define :WATCH_TOPIC_LIST, 64
        define :WATCH_TOPIC_LIST_SUCCESS, 65
        define :WATCH_TOPIC_UPDATE, 66
        define :WATCH_TOPIC_LIST_CLOSE, 67
      end

    end



    ##
    # File Options
    #
    set_option :java_package, "org.apache.pulsar.common.api.proto"
    set_option :optimize_for, ::Google::Protobuf::FileOptions::OptimizeMode::LITE_RUNTIME


    ##
    # Message Fields
    #
    class Schema
      required :string, :name, 1
      required :bytes, :schema_data, 3
      required ::Pulsar::Proto::Schema::Type, :type, 4
      repeated ::Pulsar::Proto::KeyValue, :properties, 5
    end

    class MessageIdData
      required :uint64, :ledgerId, 1
      required :uint64, :entryId, 2
      optional :int32, :partition, 3, :default => -1
      optional :int32, :batch_index, 4, :default => -1
      repeated :int64, :ack_set, 5
      optional :int32, :batch_size, 6
      optional ::Pulsar::Proto::MessageIdData, :first_chunk_message_id, 7
    end

    class KeyValue
      required :string, :key, 1
      required :string, :value, 2
    end

    class KeyLongValue
      required :string, :key, 1
      required :uint64, :value, 2
    end

    class IntRange
      required :int32, :start, 1
      required :int32, :end, 2
    end

    class EncryptionKeys
      required :string, :key, 1
      required :bytes, :value, 2
      repeated ::Pulsar::Proto::KeyValue, :metadata, 3
    end

    class MessageMetadata
      required :string, :producer_name, 1
      required :uint64, :sequence_id, 2
      required :uint64, :publish_time, 3
      repeated ::Pulsar::Proto::KeyValue, :properties, 4
      optional :string, :replicated_from, 5
      optional :string, :partition_key, 6
      repeated :string, :replicate_to, 7
      optional ::Pulsar::Proto::CompressionType, :compression, 8, :default => ::Pulsar::Proto::CompressionType::NONE
      optional :uint32, :uncompressed_size, 9, :default => 0
      optional :int32, :num_messages_in_batch, 11, :default => 1
      optional :uint64, :event_time, 12, :default => 0
      repeated ::Pulsar::Proto::EncryptionKeys, :encryption_keys, 13
      optional :string, :encryption_algo, 14
      optional :bytes, :encryption_param, 15
      optional :bytes, :schema_version, 16
      optional :bool, :partition_key_b64_encoded, 17, :default => false
      optional :bytes, :ordering_key, 18
      optional :int64, :deliver_at_time, 19
      optional :int32, :marker_type, 20
      optional :uint64, :txnid_least_bits, 22
      optional :uint64, :txnid_most_bits, 23
      optional :uint64, :highest_sequence_id, 24, :default => 0
      optional :bool, :null_value, 25, :default => false
      optional :string, :uuid, 26
      optional :int32, :num_chunks_from_msg, 27
      optional :int32, :total_chunk_msg_size, 28
      optional :int32, :chunk_id, 29
      optional :bool, :null_partition_key, 30, :default => false
    end

    class SingleMessageMetadata
      repeated ::Pulsar::Proto::KeyValue, :properties, 1
      optional :string, :partition_key, 2
      required :int32, :payload_size, 3
      optional :bool, :compacted_out, 4, :default => false
      optional :uint64, :event_time, 5, :default => 0
      optional :bool, :partition_key_b64_encoded, 6, :default => false
      optional :bytes, :ordering_key, 7
      optional :uint64, :sequence_id, 8
      optional :bool, :null_value, 9, :default => false
      optional :bool, :null_partition_key, 10, :default => false
    end

    class BrokerEntryMetadata
      optional :uint64, :broker_timestamp, 1
      optional :uint64, :index, 2
    end

    class CommandConnect
      required :string, :client_version, 1
      optional ::Pulsar::Proto::AuthMethod, :auth_method, 2
      optional :string, :auth_method_name, 5
      optional :bytes, :auth_data, 3
      optional :int32, :protocol_version, 4, :default => 0
      optional :string, :proxy_to_broker_url, 6
      optional :string, :original_principal, 7
      optional :string, :original_auth_data, 8
      optional :string, :original_auth_method, 9
      optional ::Pulsar::Proto::FeatureFlags, :feature_flags, 10
    end

    class FeatureFlags
      optional :bool, :supports_auth_refresh, 1, :default => false
      optional :bool, :supports_broker_entry_metadata, 2, :default => false
      optional :bool, :supports_partial_producer, 3, :default => false
      optional :bool, :supports_topic_watchers, 4, :default => false
    end

    class CommandConnected
      required :string, :server_version, 1
      optional :int32, :protocol_version, 2, :default => 0
      optional :int32, :max_message_size, 3
      optional ::Pulsar::Proto::FeatureFlags, :feature_flags, 4
    end

    class CommandAuthResponse
      optional :string, :client_version, 1
      optional ::Pulsar::Proto::AuthData, :response, 2
      optional :int32, :protocol_version, 3, :default => 0
    end

    class CommandAuthChallenge
      optional :string, :server_version, 1
      optional ::Pulsar::Proto::AuthData, :challenge, 2
      optional :int32, :protocol_version, 3, :default => 0
    end

    class AuthData
      optional :string, :auth_method_name, 1
      optional :bytes, :auth_data, 2
    end

    class KeySharedMeta
      required ::Pulsar::Proto::KeySharedMode, :keySharedMode, 1
      repeated ::Pulsar::Proto::IntRange, :hashRanges, 3
      optional :bool, :allowOutOfOrderDelivery, 4, :default => false
    end

    class CommandSubscribe
      required :string, :topic, 1
      required :string, :subscription, 2
      required ::Pulsar::Proto::CommandSubscribe::SubType, :subType, 3
      required :uint64, :consumer_id, 4
      required :uint64, :request_id, 5
      optional :string, :consumer_name, 6
      optional :int32, :priority_level, 7
      optional :bool, :durable, 8, :default => true
      optional ::Pulsar::Proto::MessageIdData, :start_message_id, 9
      repeated ::Pulsar::Proto::KeyValue, :metadata, 10
      optional :bool, :read_compacted, 11
      optional ::Pulsar::Proto::Schema, :schema, 12
      optional ::Pulsar::Proto::CommandSubscribe::InitialPosition, :initialPosition, 13, :default => ::Pulsar::Proto::CommandSubscribe::InitialPosition::LATEST
      optional :bool, :replicate_subscription_state, 14
      optional :bool, :force_topic_creation, 15, :default => true
      optional :uint64, :start_message_rollback_duration_sec, 16, :default => 0
      optional ::Pulsar::Proto::KeySharedMeta, :keySharedMeta, 17
      repeated ::Pulsar::Proto::KeyValue, :subscription_properties, 18
      optional :uint64, :consumer_epoch, 19
    end

    class CommandPartitionedTopicMetadata
      required :string, :topic, 1
      required :uint64, :request_id, 2
      optional :string, :original_principal, 3
      optional :string, :original_auth_data, 4
      optional :string, :original_auth_method, 5
    end

    class CommandPartitionedTopicMetadataResponse
      optional :uint32, :partitions, 1
      required :uint64, :request_id, 2
      optional ::Pulsar::Proto::CommandPartitionedTopicMetadataResponse::LookupType, :response, 3
      optional ::Pulsar::Proto::ServerError, :error, 4
      optional :string, :message, 5
    end

    class CommandLookupTopic
      required :string, :topic, 1
      required :uint64, :request_id, 2
      optional :bool, :authoritative, 3, :default => false
      optional :string, :original_principal, 4
      optional :string, :original_auth_data, 5
      optional :string, :original_auth_method, 6
      optional :string, :advertised_listener_name, 7
    end

    class CommandLookupTopicResponse
      optional :string, :brokerServiceUrl, 1
      optional :string, :brokerServiceUrlTls, 2
      optional ::Pulsar::Proto::CommandLookupTopicResponse::LookupType, :response, 3
      required :uint64, :request_id, 4
      optional :bool, :authoritative, 5, :default => false
      optional ::Pulsar::Proto::ServerError, :error, 6
      optional :string, :message, 7
      optional :bool, :proxy_through_service_url, 8, :default => false
    end

    class CommandProducer
      required :string, :topic, 1
      required :uint64, :producer_id, 2
      required :uint64, :request_id, 3
      optional :string, :producer_name, 4
      optional :bool, :encrypted, 5, :default => false
      repeated ::Pulsar::Proto::KeyValue, :metadata, 6
      optional ::Pulsar::Proto::Schema, :schema, 7
      optional :uint64, :epoch, 8, :default => 0
      optional :bool, :user_provided_producer_name, 9, :default => true
      optional ::Pulsar::Proto::ProducerAccessMode, :producer_access_mode, 10, :default => ::Pulsar::Proto::ProducerAccessMode::SHARED
      optional :uint64, :topic_epoch, 11
      optional :bool, :txn_enabled, 12, :default => false
      optional :string, :initial_subscription_name, 13
    end

    class CommandSend
      required :uint64, :producer_id, 1
      required :uint64, :sequence_id, 2
      optional :int32, :num_messages, 3, :default => 1
      optional :uint64, :txnid_least_bits, 4, :default => 0
      optional :uint64, :txnid_most_bits, 5, :default => 0
      optional :uint64, :highest_sequence_id, 6, :default => 0
      optional :bool, :is_chunk, 7, :default => false
      optional :bool, :marker, 8, :default => false
    end

    class CommandSendReceipt
      required :uint64, :producer_id, 1
      required :uint64, :sequence_id, 2
      optional ::Pulsar::Proto::MessageIdData, :message_id, 3
      optional :uint64, :highest_sequence_id, 4, :default => 0
    end

    class CommandSendError
      required :uint64, :producer_id, 1
      required :uint64, :sequence_id, 2
      required ::Pulsar::Proto::ServerError, :error, 3
      required :string, :message, 4
    end

    class CommandMessage
      required :uint64, :consumer_id, 1
      required ::Pulsar::Proto::MessageIdData, :message_id, 2
      optional :uint32, :redelivery_count, 3, :default => 0
      repeated :int64, :ack_set, 4
      optional :uint64, :consumer_epoch, 5
    end

    class CommandAck
      required :uint64, :consumer_id, 1
      required ::Pulsar::Proto::CommandAck::AckType, :ack_type, 2
      repeated ::Pulsar::Proto::MessageIdData, :message_id, 3
      optional ::Pulsar::Proto::CommandAck::ValidationError, :validation_error, 4
      repeated ::Pulsar::Proto::KeyLongValue, :properties, 5
      optional :uint64, :txnid_least_bits, 6, :default => 0
      optional :uint64, :txnid_most_bits, 7, :default => 0
      optional :uint64, :request_id, 8
    end

    class CommandAckResponse
      required :uint64, :consumer_id, 1
      optional :uint64, :txnid_least_bits, 2, :default => 0
      optional :uint64, :txnid_most_bits, 3, :default => 0
      optional ::Pulsar::Proto::ServerError, :error, 4
      optional :string, :message, 5
      optional :uint64, :request_id, 6
    end

    class CommandActiveConsumerChange
      required :uint64, :consumer_id, 1
      optional :bool, :is_active, 2, :default => false
    end

    class CommandFlow
      required :uint64, :consumer_id, 1
      required :uint32, :messagePermits, 2
    end

    class CommandUnsubscribe
      required :uint64, :consumer_id, 1
      required :uint64, :request_id, 2
    end

    class CommandSeek
      required :uint64, :consumer_id, 1
      required :uint64, :request_id, 2
      optional ::Pulsar::Proto::MessageIdData, :message_id, 3
      optional :uint64, :message_publish_time, 4
    end

    class CommandReachedEndOfTopic
      required :uint64, :consumer_id, 1
    end

    class CommandCloseProducer
      required :uint64, :producer_id, 1
      required :uint64, :request_id, 2
    end

    class CommandCloseConsumer
      required :uint64, :consumer_id, 1
      required :uint64, :request_id, 2
    end

    class CommandRedeliverUnacknowledgedMessages
      required :uint64, :consumer_id, 1
      repeated ::Pulsar::Proto::MessageIdData, :message_ids, 2
      optional :uint64, :consumer_epoch, 3
    end

    class CommandSuccess
      required :uint64, :request_id, 1
      optional ::Pulsar::Proto::Schema, :schema, 2
    end

    class CommandProducerSuccess
      required :uint64, :request_id, 1
      required :string, :producer_name, 2
      optional :int64, :last_sequence_id, 3, :default => -1
      optional :bytes, :schema_version, 4
      optional :uint64, :topic_epoch, 5
      optional :bool, :producer_ready, 6, :default => true
    end

    class CommandError
      required :uint64, :request_id, 1
      required ::Pulsar::Proto::ServerError, :error, 2
      required :string, :message, 3
    end

    class CommandConsumerStats
      required :uint64, :request_id, 1
      required :uint64, :consumer_id, 4
    end

    class CommandConsumerStatsResponse
      required :uint64, :request_id, 1
      optional ::Pulsar::Proto::ServerError, :error_code, 2
      optional :string, :error_message, 3
      optional :double, :msgRateOut, 4
      optional :double, :msgThroughputOut, 5
      optional :double, :msgRateRedeliver, 6
      optional :string, :consumerName, 7
      optional :uint64, :availablePermits, 8
      optional :uint64, :unackedMessages, 9
      optional :bool, :blockedConsumerOnUnackedMsgs, 10
      optional :string, :address, 11
      optional :string, :connectedSince, 12
      optional :string, :type, 13
      optional :double, :msgRateExpired, 14
      optional :uint64, :msgBacklog, 15
      optional :double, :messageAckRate, 16
    end

    class CommandGetLastMessageId
      required :uint64, :consumer_id, 1
      required :uint64, :request_id, 2
    end

    class CommandGetLastMessageIdResponse
      required ::Pulsar::Proto::MessageIdData, :last_message_id, 1
      required :uint64, :request_id, 2
      optional ::Pulsar::Proto::MessageIdData, :consumer_mark_delete_position, 3
    end

    class CommandGetTopicsOfNamespace
      required :uint64, :request_id, 1
      required :string, :namespace, 2
      optional ::Pulsar::Proto::CommandGetTopicsOfNamespace::Mode, :mode, 3, :default => ::Pulsar::Proto::CommandGetTopicsOfNamespace::Mode::PERSISTENT
      optional :string, :topics_pattern, 4
      optional :string, :topics_hash, 5
    end

    class CommandGetTopicsOfNamespaceResponse
      required :uint64, :request_id, 1
      repeated :string, :topics, 2
      optional :bool, :filtered, 3, :default => false
      optional :string, :topics_hash, 4
      optional :bool, :changed, 5, :default => true
    end

    class CommandWatchTopicList
      required :uint64, :request_id, 1
      required :uint64, :watcher_id, 2
      required :string, :namespace, 3
      required :string, :topics_pattern, 4
      optional :string, :topics_hash, 5
    end

    class CommandWatchTopicListSuccess
      required :uint64, :request_id, 1
      required :uint64, :watcher_id, 2
      repeated :string, :topic, 3
      required :string, :topics_hash, 4
    end

    class CommandWatchTopicUpdate
      required :uint64, :watcher_id, 1
      repeated :string, :new_topics, 2
      repeated :string, :deleted_topics, 3
      required :string, :topics_hash, 4
    end

    class CommandWatchTopicListClose
      required :uint64, :request_id, 1
      required :uint64, :watcher_id, 2
    end

    class CommandGetSchema
      required :uint64, :request_id, 1
      required :string, :topic, 2
      optional :bytes, :schema_version, 3
    end

    class CommandGetSchemaResponse
      required :uint64, :request_id, 1
      optional ::Pulsar::Proto::ServerError, :error_code, 2
      optional :string, :error_message, 3
      optional ::Pulsar::Proto::Schema, :schema, 4
      optional :bytes, :schema_version, 5
    end

    class CommandGetOrCreateSchema
      required :uint64, :request_id, 1
      required :string, :topic, 2
      required ::Pulsar::Proto::Schema, :schema, 3
    end

    class CommandGetOrCreateSchemaResponse
      required :uint64, :request_id, 1
      optional ::Pulsar::Proto::ServerError, :error_code, 2
      optional :string, :error_message, 3
      optional :bytes, :schema_version, 4
    end

    class CommandTcClientConnectRequest
      required :uint64, :request_id, 1
      required :uint64, :tc_id, 2, :default => 0
    end

    class CommandTcClientConnectResponse
      required :uint64, :request_id, 1
      optional ::Pulsar::Proto::ServerError, :error, 2
      optional :string, :message, 3
    end

    class CommandNewTxn
      required :uint64, :request_id, 1
      optional :uint64, :txn_ttl_seconds, 2, :default => 0
      optional :uint64, :tc_id, 3, :default => 0
    end

    class CommandNewTxnResponse
      required :uint64, :request_id, 1
      optional :uint64, :txnid_least_bits, 2, :default => 0
      optional :uint64, :txnid_most_bits, 3, :default => 0
      optional ::Pulsar::Proto::ServerError, :error, 4
      optional :string, :message, 5
    end

    class CommandAddPartitionToTxn
      required :uint64, :request_id, 1
      optional :uint64, :txnid_least_bits, 2, :default => 0
      optional :uint64, :txnid_most_bits, 3, :default => 0
      repeated :string, :partitions, 4
    end

    class CommandAddPartitionToTxnResponse
      required :uint64, :request_id, 1
      optional :uint64, :txnid_least_bits, 2, :default => 0
      optional :uint64, :txnid_most_bits, 3, :default => 0
      optional ::Pulsar::Proto::ServerError, :error, 4
      optional :string, :message, 5
    end

    class Subscription
      required :string, :topic, 1
      required :string, :subscription, 2
    end

    class CommandAddSubscriptionToTxn
      required :uint64, :request_id, 1
      optional :uint64, :txnid_least_bits, 2, :default => 0
      optional :uint64, :txnid_most_bits, 3, :default => 0
      repeated ::Pulsar::Proto::Subscription, :subscription, 4
    end

    class CommandAddSubscriptionToTxnResponse
      required :uint64, :request_id, 1
      optional :uint64, :txnid_least_bits, 2, :default => 0
      optional :uint64, :txnid_most_bits, 3, :default => 0
      optional ::Pulsar::Proto::ServerError, :error, 4
      optional :string, :message, 5
    end

    class CommandEndTxn
      required :uint64, :request_id, 1
      optional :uint64, :txnid_least_bits, 2, :default => 0
      optional :uint64, :txnid_most_bits, 3, :default => 0
      optional ::Pulsar::Proto::TxnAction, :txn_action, 4
    end

    class CommandEndTxnResponse
      required :uint64, :request_id, 1
      optional :uint64, :txnid_least_bits, 2, :default => 0
      optional :uint64, :txnid_most_bits, 3, :default => 0
      optional ::Pulsar::Proto::ServerError, :error, 4
      optional :string, :message, 5
    end

    class CommandEndTxnOnPartition
      required :uint64, :request_id, 1
      optional :uint64, :txnid_least_bits, 2, :default => 0
      optional :uint64, :txnid_most_bits, 3, :default => 0
      optional :string, :topic, 4
      optional ::Pulsar::Proto::TxnAction, :txn_action, 5
      optional :uint64, :txnid_least_bits_of_low_watermark, 6
    end

    class CommandEndTxnOnPartitionResponse
      required :uint64, :request_id, 1
      optional :uint64, :txnid_least_bits, 2, :default => 0
      optional :uint64, :txnid_most_bits, 3, :default => 0
      optional ::Pulsar::Proto::ServerError, :error, 4
      optional :string, :message, 5
    end

    class CommandEndTxnOnSubscription
      required :uint64, :request_id, 1
      optional :uint64, :txnid_least_bits, 2, :default => 0
      optional :uint64, :txnid_most_bits, 3, :default => 0
      optional ::Pulsar::Proto::Subscription, :subscription, 4
      optional ::Pulsar::Proto::TxnAction, :txn_action, 5
      optional :uint64, :txnid_least_bits_of_low_watermark, 6
    end

    class CommandEndTxnOnSubscriptionResponse
      required :uint64, :request_id, 1
      optional :uint64, :txnid_least_bits, 2, :default => 0
      optional :uint64, :txnid_most_bits, 3, :default => 0
      optional ::Pulsar::Proto::ServerError, :error, 4
      optional :string, :message, 5
    end

    class BaseCommand
      required ::Pulsar::Proto::BaseCommand::Type, :type, 1
      optional ::Pulsar::Proto::CommandConnect, :connect, 2
      optional ::Pulsar::Proto::CommandConnected, :connected, 3
      optional ::Pulsar::Proto::CommandSubscribe, :subscribe, 4
      optional ::Pulsar::Proto::CommandProducer, :producer, 5
      optional ::Pulsar::Proto::CommandSend, :send, 6
      optional ::Pulsar::Proto::CommandSendReceipt, :send_receipt, 7
      optional ::Pulsar::Proto::CommandSendError, :send_error, 8
      optional ::Pulsar::Proto::CommandMessage, :message, 9
      optional ::Pulsar::Proto::CommandAck, :ack, 10
      optional ::Pulsar::Proto::CommandFlow, :flow, 11
      optional ::Pulsar::Proto::CommandUnsubscribe, :unsubscribe, 12
      optional ::Pulsar::Proto::CommandSuccess, :success, 13
      optional ::Pulsar::Proto::CommandError, :error, 14
      optional ::Pulsar::Proto::CommandCloseProducer, :close_producer, 15
      optional ::Pulsar::Proto::CommandCloseConsumer, :close_consumer, 16
      optional ::Pulsar::Proto::CommandProducerSuccess, :producer_success, 17
      optional ::Pulsar::Proto::CommandPing, :ping, 18
      optional ::Pulsar::Proto::CommandPong, :pong, 19
      optional ::Pulsar::Proto::CommandRedeliverUnacknowledgedMessages, :redeliverUnacknowledgedMessages, 20
      optional ::Pulsar::Proto::CommandPartitionedTopicMetadata, :partitionMetadata, 21
      optional ::Pulsar::Proto::CommandPartitionedTopicMetadataResponse, :partitionMetadataResponse, 22
      optional ::Pulsar::Proto::CommandLookupTopic, :lookupTopic, 23
      optional ::Pulsar::Proto::CommandLookupTopicResponse, :lookupTopicResponse, 24
      optional ::Pulsar::Proto::CommandConsumerStats, :consumerStats, 25
      optional ::Pulsar::Proto::CommandConsumerStatsResponse, :consumerStatsResponse, 26
      optional ::Pulsar::Proto::CommandReachedEndOfTopic, :reachedEndOfTopic, 27
      optional ::Pulsar::Proto::CommandSeek, :seek, 28
      optional ::Pulsar::Proto::CommandGetLastMessageId, :getLastMessageId, 29
      optional ::Pulsar::Proto::CommandGetLastMessageIdResponse, :getLastMessageIdResponse, 30
      optional ::Pulsar::Proto::CommandActiveConsumerChange, :active_consumer_change, 31
      optional ::Pulsar::Proto::CommandGetTopicsOfNamespace, :getTopicsOfNamespace, 32
      optional ::Pulsar::Proto::CommandGetTopicsOfNamespaceResponse, :getTopicsOfNamespaceResponse, 33
      optional ::Pulsar::Proto::CommandGetSchema, :getSchema, 34
      optional ::Pulsar::Proto::CommandGetSchemaResponse, :getSchemaResponse, 35
      optional ::Pulsar::Proto::CommandAuthChallenge, :authChallenge, 36
      optional ::Pulsar::Proto::CommandAuthResponse, :authResponse, 37
      optional ::Pulsar::Proto::CommandAckResponse, :ackResponse, 38
      optional ::Pulsar::Proto::CommandGetOrCreateSchema, :getOrCreateSchema, 39
      optional ::Pulsar::Proto::CommandGetOrCreateSchemaResponse, :getOrCreateSchemaResponse, 40
      optional ::Pulsar::Proto::CommandNewTxn, :newTxn, 50
      optional ::Pulsar::Proto::CommandNewTxnResponse, :newTxnResponse, 51
      optional ::Pulsar::Proto::CommandAddPartitionToTxn, :addPartitionToTxn, 52
      optional ::Pulsar::Proto::CommandAddPartitionToTxnResponse, :addPartitionToTxnResponse, 53
      optional ::Pulsar::Proto::CommandAddSubscriptionToTxn, :addSubscriptionToTxn, 54
      optional ::Pulsar::Proto::CommandAddSubscriptionToTxnResponse, :addSubscriptionToTxnResponse, 55
      optional ::Pulsar::Proto::CommandEndTxn, :endTxn, 56
      optional ::Pulsar::Proto::CommandEndTxnResponse, :endTxnResponse, 57
      optional ::Pulsar::Proto::CommandEndTxnOnPartition, :endTxnOnPartition, 58
      optional ::Pulsar::Proto::CommandEndTxnOnPartitionResponse, :endTxnOnPartitionResponse, 59
      optional ::Pulsar::Proto::CommandEndTxnOnSubscription, :endTxnOnSubscription, 60
      optional ::Pulsar::Proto::CommandEndTxnOnSubscriptionResponse, :endTxnOnSubscriptionResponse, 61
      optional ::Pulsar::Proto::CommandTcClientConnectRequest, :tcClientConnectRequest, 62
      optional ::Pulsar::Proto::CommandTcClientConnectResponse, :tcClientConnectResponse, 63
      optional ::Pulsar::Proto::CommandWatchTopicList, :watchTopicList, 64
      optional ::Pulsar::Proto::CommandWatchTopicListSuccess, :watchTopicListSuccess, 65
      optional ::Pulsar::Proto::CommandWatchTopicUpdate, :watchTopicUpdate, 66
      optional ::Pulsar::Proto::CommandWatchTopicListClose, :watchTopicListClose, 67
    end

  end

end

