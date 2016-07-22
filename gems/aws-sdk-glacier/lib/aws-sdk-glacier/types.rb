# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module Glacier
    module Types

      # Provides options to abort a multipart upload identified by the upload
      # ID.
      #
      # For information about the underlying REST API, go to [Abort Multipart
      # Upload][1]. For conceptual information, go to [Working with Archives
      # in Amazon Glacier][2].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html
      # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html
      # @note When making an API call, pass AbortMultipartUploadInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         upload_id: "string", # required
      #       }
      class AbortMultipartUploadInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :upload_id)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] upload_id
        #   The upload ID of the multipart upload to delete.
        #   @return [String]

      end

      # The input values for `AbortVaultLock`.
      # @note When making an API call, pass AbortVaultLockInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #       }
      class AbortVaultLockInput < Aws::Structure.new(
        :account_id,
        :vault_name)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID. This value must match
        #   the AWS account ID associated with the credentials used to sign the
        #   request. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you specify your account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

      end

      # The input values for `AddTagsToVault`.
      # @note When making an API call, pass AddTagsToVaultInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         tags: {
      #           "TagKey" => "TagValue",
      #         },
      #       }
      class AddTagsToVaultInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :tags)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] tags
        #   The tags to add to the vault. Each tag is composed of a key and a
        #   value. The value can be an empty string.
        #   @return [Hash<String,String>]

      end

      # Contains the Amazon Glacier response to your request.
      #
      # For information about the underlying REST API, go to [Upload
      # Archive][1]. For conceptual information, go to [Working with Archives
      # in Amazon Glacier][2].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html
      # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html
      class ArchiveCreationOutput < Aws::Structure.new(
        :location,
        :checksum,
        :archive_id)

        # @!attribute [rw] location
        #   The relative URI path of the newly added archive resource.
        #   @return [String]

        # @!attribute [rw] checksum
        #   The checksum of the archive computed by Amazon Glacier.
        #   @return [String]

        # @!attribute [rw] archive_id
        #   The ID of the archive. This value is also included as part of the
        #   location.
        #   @return [String]

      end

      # Provides options to complete a multipart upload operation. This
      # informs Amazon Glacier that all the archive parts have been uploaded
      # and Amazon Glacier can now assemble the archive from the uploaded
      # parts. After assembling and saving the archive to the vault, Amazon
      # Glacier returns the URI path of the newly created archive resource.
      # @note When making an API call, pass CompleteMultipartUploadInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         upload_id: "string", # required
      #         archive_size: 1,
      #         checksum: "string",
      #       }
      class CompleteMultipartUploadInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :upload_id,
        :archive_size,
        :checksum)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] upload_id
        #   The upload ID of the multipart upload.
        #   @return [String]

        # @!attribute [rw] archive_size
        #   The total size, in bytes, of the entire archive. This value should
        #   be the sum of all the sizes of the individual parts that you
        #   uploaded.
        #   @return [Integer]

        # @!attribute [rw] checksum
        #   The SHA256 tree hash of the entire archive. It is the tree hash of
        #   SHA256 tree hash of the individual parts. If the value you specify
        #   in the request does not match the SHA256 tree hash of the final
        #   assembled archive as computed by Amazon Glacier, Amazon Glacier
        #   returns an error and the request fails.
        #   @return [String]

      end

      # The input values for `CompleteVaultLock`.
      # @note When making an API call, pass CompleteVaultLockInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         lock_id: "string", # required
      #       }
      class CompleteVaultLockInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :lock_id)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID. This value must match
        #   the AWS account ID associated with the credentials used to sign the
        #   request. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you specify your account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] lock_id
        #   The `lockId` value is the lock ID obtained from a InitiateVaultLock
        #   request.
        #   @return [String]

      end

      # Provides options to create a vault.
      # @note When making an API call, pass CreateVaultInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #       }
      class CreateVaultInput < Aws::Structure.new(
        :account_id,
        :vault_name)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID. This value must match
        #   the AWS account ID associated with the credentials used to sign the
        #   request. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you specify your account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

      end

      # Contains the Amazon Glacier response to your request.
      class CreateVaultOutput < Aws::Structure.new(
        :location)

        # @!attribute [rw] location
        #   The URI of the vault that was created.
        #   @return [String]

      end

      # Data retrieval policy.
      # @note When making an API call, pass DataRetrievalPolicy
      #   data as a hash:
      #
      #       {
      #         rules: [
      #           {
      #             strategy: "string",
      #             bytes_per_hour: 1,
      #           },
      #         ],
      #       }
      class DataRetrievalPolicy < Aws::Structure.new(
        :rules)

        # @!attribute [rw] rules
        #   The policy rule. Although this is a list type, currently there must
        #   be only one rule, which contains a Strategy field and optionally a
        #   BytesPerHour field.
        #   @return [Array<Types::DataRetrievalRule>]

      end

      # Data retrieval policy rule.
      # @note When making an API call, pass DataRetrievalRule
      #   data as a hash:
      #
      #       {
      #         strategy: "string",
      #         bytes_per_hour: 1,
      #       }
      class DataRetrievalRule < Aws::Structure.new(
        :strategy,
        :bytes_per_hour)

        # @!attribute [rw] strategy
        #   The type of data retrieval policy to set.
        #
        #   Valid values: BytesPerHour\|FreeTier\|None
        #   @return [String]

        # @!attribute [rw] bytes_per_hour
        #   The maximum number of bytes that can be retrieved in an hour.
        #
        #   This field is required only if the value of the Strategy field is
        #   `BytesPerHour`. Your PUT operation will be rejected if the Strategy
        #   field is not set to `BytesPerHour` and you set this field.
        #   @return [Integer]

      end

      # Provides options for deleting an archive from an Amazon Glacier vault.
      # @note When making an API call, pass DeleteArchiveInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         archive_id: "string", # required
      #       }
      class DeleteArchiveInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :archive_id)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] archive_id
        #   The ID of the archive to delete.
        #   @return [String]

      end

      # DeleteVaultAccessPolicy input.
      # @note When making an API call, pass DeleteVaultAccessPolicyInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #       }
      class DeleteVaultAccessPolicyInput < Aws::Structure.new(
        :account_id,
        :vault_name)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

      end

      # Provides options for deleting a vault from Amazon Glacier.
      # @note When making an API call, pass DeleteVaultInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #       }
      class DeleteVaultInput < Aws::Structure.new(
        :account_id,
        :vault_name)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

      end

      # Provides options for deleting a vault notification configuration from
      # an Amazon Glacier vault.
      # @note When making an API call, pass DeleteVaultNotificationsInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #       }
      class DeleteVaultNotificationsInput < Aws::Structure.new(
        :account_id,
        :vault_name)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

      end

      # Provides options for retrieving a job description.
      # @note When making an API call, pass DescribeJobInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         job_id: "string", # required
      #       }
      class DescribeJobInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :job_id)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] job_id
        #   The ID of the job to describe.
        #   @return [String]

      end

      # Provides options for retrieving metadata for a specific vault in
      # Amazon Glacier.
      # @note When making an API call, pass DescribeVaultInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #       }
      class DescribeVaultInput < Aws::Structure.new(
        :account_id,
        :vault_name)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

      end

      # Contains the Amazon Glacier response to your request.
      class DescribeVaultOutput < Aws::Structure.new(
        :vault_arn,
        :vault_name,
        :creation_date,
        :last_inventory_date,
        :number_of_archives,
        :size_in_bytes)

        # @!attribute [rw] vault_arn
        #   The Amazon Resource Name (ARN) of the vault.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] creation_date
        #   The UTC date when the vault was created. A string representation of
        #   ISO 8601 date format, for example, \"2012-03-20T17:03:43.221Z\".
        #   @return [Time]

        # @!attribute [rw] last_inventory_date
        #   The UTC date when Amazon Glacier completed the last vault inventory.
        #   A string representation of ISO 8601 date format, for example,
        #   \"2012-03-20T17:03:43.221Z\".
        #   @return [Time]

        # @!attribute [rw] number_of_archives
        #   The number of archives in the vault as of the last inventory date.
        #   This field will return `null` if an inventory has not yet run on the
        #   vault, for example, if you just created the vault.
        #   @return [Integer]

        # @!attribute [rw] size_in_bytes
        #   Total size, in bytes, of the archives in the vault as of the last
        #   inventory date. This field will return null if an inventory has not
        #   yet run on the vault, for example, if you just created the vault.
        #   @return [Integer]

      end

      # Input for GetDataRetrievalPolicy.
      # @note When making an API call, pass GetDataRetrievalPolicyInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #       }
      class GetDataRetrievalPolicyInput < Aws::Structure.new(
        :account_id)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID. This value must match
        #   the AWS account ID associated with the credentials used to sign the
        #   request. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you specify your account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

      end

      # Contains the Amazon Glacier response to the `GetDataRetrievalPolicy`
      # request.
      class GetDataRetrievalPolicyOutput < Aws::Structure.new(
        :policy)

        # @!attribute [rw] policy
        #   Contains the returned data retrieval policy in JSON format.
        #   @return [Types::DataRetrievalPolicy]

      end

      # Provides options for downloading output of an Amazon Glacier job.
      # @note When making an API call, pass GetJobOutputInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         job_id: "string", # required
      #         range: "string",
      #       }
      class GetJobOutputInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :job_id,
        :range)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] job_id
        #   The job ID whose data is downloaded.
        #   @return [String]

        # @!attribute [rw] range
        #   The range of bytes to retrieve from the output. For example, if you
        #   want to download the first 1,048,576 bytes, specify \"Range:
        #   bytes=0-1048575\". By default, this operation downloads the entire
        #   output.
        #   @return [String]

      end

      # Contains the Amazon Glacier response to your request.
      class GetJobOutputOutput < Aws::Structure.new(
        :body,
        :checksum,
        :status,
        :content_range,
        :accept_ranges,
        :content_type,
        :archive_description)

        # @!attribute [rw] body
        #   The job data, either archive data or inventory data.
        #   @return [IO]

        # @!attribute [rw] checksum
        #   The checksum of the data in the response. This header is returned
        #   only when retrieving the output for an archive retrieval job.
        #   Furthermore, this header appears only under the following
        #   conditions: * You get the entire range of the archive.
        #   * You request a range to return of the archive that starts and ends
        #     on a multiple of 1 MB. For example, if you have an 3.1 MB archive
        #     and you specify a range to return that starts at 1 MB and ends at
        #     2 MB, then the x-amz-sha256-tree-hash is returned as a response
        #     header.
        #   * You request a range of the archive to return that starts on a
        #     multiple of 1 MB and goes to the end of the archive. For example,
        #     if you have a 3.1 MB archive and you specify a range that starts
        #     at 2 MB and ends at 3.1 MB (the end of the archive), then the
        #     x-amz-sha256-tree-hash is returned as a response header.
        #   @return [String]

        # @!attribute [rw] status
        #   The HTTP response code for a job output request. The value depends
        #   on whether a range was specified in the request.
        #   @return [Integer]

        # @!attribute [rw] content_range
        #   The range of bytes returned by Amazon Glacier. If only partial
        #   output is downloaded, the response provides the range of bytes
        #   Amazon Glacier returned. For example, bytes 0-1048575/8388608
        #   returns the first 1 MB from 8 MB.
        #   @return [String]

        # @!attribute [rw] accept_ranges
        #   Indicates the range units accepted. For more information, go to
        #   [RFC2616][1].
        #
        #
        #
        #   [1]: http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html
        #   @return [String]

        # @!attribute [rw] content_type
        #   The Content-Type depends on whether the job output is an archive or
        #   a vault inventory. For archive data, the Content-Type is
        #   application/octet-stream. For vault inventory, if you requested CSV
        #   format when you initiated the job, the Content-Type is text/csv.
        #   Otherwise, by default, vault inventory is returned as JSON, and the
        #   Content-Type is application/json.
        #   @return [String]

        # @!attribute [rw] archive_description
        #   The description of an archive.
        #   @return [String]

      end

      # Input for GetVaultAccessPolicy.
      # @note When making an API call, pass GetVaultAccessPolicyInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #       }
      class GetVaultAccessPolicyInput < Aws::Structure.new(
        :account_id,
        :vault_name)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

      end

      # Output for GetVaultAccessPolicy.
      class GetVaultAccessPolicyOutput < Aws::Structure.new(
        :policy)

        # @!attribute [rw] policy
        #   Contains the returned vault access policy as a JSON string.
        #   @return [Types::VaultAccessPolicy]

      end

      # The input values for `GetVaultLock`.
      # @note When making an API call, pass GetVaultLockInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #       }
      class GetVaultLockInput < Aws::Structure.new(
        :account_id,
        :vault_name)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

      end

      # Contains the Amazon Glacier response to your request.
      class GetVaultLockOutput < Aws::Structure.new(
        :policy,
        :state,
        :expiration_date,
        :creation_date)

        # @!attribute [rw] policy
        #   The vault lock policy as a JSON string, which uses \"\\\" as an
        #   escape character.
        #   @return [String]

        # @!attribute [rw] state
        #   The state of the vault lock. `InProgress` or `Locked`.
        #   @return [String]

        # @!attribute [rw] expiration_date
        #   The UTC date and time at which the lock ID expires. This value can
        #   be `null` if the vault lock is in a `Locked` state.
        #   @return [Time]

        # @!attribute [rw] creation_date
        #   The UTC date and time at which the vault lock was put into the
        #   `InProgress` state.
        #   @return [Time]

      end

      # Provides options for retrieving the notification configuration set on
      # an Amazon Glacier vault.
      # @note When making an API call, pass GetVaultNotificationsInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #       }
      class GetVaultNotificationsInput < Aws::Structure.new(
        :account_id,
        :vault_name)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

      end

      # Contains the Amazon Glacier response to your request.
      class GetVaultNotificationsOutput < Aws::Structure.new(
        :vault_notification_config)

        # @!attribute [rw] vault_notification_config
        #   Returns the notification configuration set on the vault.
        #   @return [Types::VaultNotificationConfig]

      end

      # Describes an Amazon Glacier job.
      class GlacierJobDescription < Aws::Structure.new(
        :job_id,
        :job_description,
        :action,
        :archive_id,
        :vault_arn,
        :creation_date,
        :completed,
        :status_code,
        :status_message,
        :archive_size_in_bytes,
        :inventory_size_in_bytes,
        :sns_topic,
        :completion_date,
        :sha256_tree_hash,
        :archive_sha256_tree_hash,
        :retrieval_byte_range,
        :inventory_retrieval_parameters)

        # @!attribute [rw] job_id
        #   An opaque string that identifies an Amazon Glacier job.
        #   @return [String]

        # @!attribute [rw] job_description
        #   The job description you provided when you initiated the job.
        #   @return [String]

        # @!attribute [rw] action
        #   The job type. It is either ArchiveRetrieval or InventoryRetrieval.
        #   @return [String]

        # @!attribute [rw] archive_id
        #   For an ArchiveRetrieval job, this is the archive ID requested for
        #   download. Otherwise, this field is null.
        #   @return [String]

        # @!attribute [rw] vault_arn
        #   The Amazon Resource Name (ARN) of the vault from which the archive
        #   retrieval was requested.
        #   @return [String]

        # @!attribute [rw] creation_date
        #   The UTC date when the job was created. A string representation of
        #   ISO 8601 date format, for example, \"2012-03-20T17:03:43.221Z\".
        #   @return [Time]

        # @!attribute [rw] completed
        #   The job status. When a job is completed, you get the job\'s output.
        #   @return [Boolean]

        # @!attribute [rw] status_code
        #   The status code can be InProgress, Succeeded, or Failed, and
        #   indicates the status of the job.
        #   @return [String]

        # @!attribute [rw] status_message
        #   A friendly message that describes the job status.
        #   @return [String]

        # @!attribute [rw] archive_size_in_bytes
        #   For an ArchiveRetrieval job, this is the size in bytes of the
        #   archive being requested for download. For the InventoryRetrieval
        #   job, the value is null.
        #   @return [Integer]

        # @!attribute [rw] inventory_size_in_bytes
        #   For an InventoryRetrieval job, this is the size in bytes of the
        #   inventory requested for download. For the ArchiveRetrieval job, the
        #   value is null.
        #   @return [Integer]

        # @!attribute [rw] sns_topic
        #   An Amazon Simple Notification Service (Amazon SNS) topic that
        #   receives notification.
        #   @return [String]

        # @!attribute [rw] completion_date
        #   The UTC time that the archive retrieval request completed. While the
        #   job is in progress, the value will be null.
        #   @return [Time]

        # @!attribute [rw] sha256_tree_hash
        #   For an ArchiveRetrieval job, it is the checksum of the archive.
        #   Otherwise, the value is null.
        #
        #   The SHA256 tree hash value for the requested range of an archive. If
        #   the Initiate a Job request for an archive specified a tree-hash
        #   aligned range, then this field returns a value.
        #
        #   For the specific case when the whole archive is retrieved, this
        #   value is the same as the ArchiveSHA256TreeHash value.
        #
        #   This field is null in the following situations: * Archive retrieval
        #   jobs that specify a range that is not tree-hash
        #     aligned.
        #
        #   ^
        #
        #    * Archival jobs that specify a range that is equal to the whole
        #     archive and the job status is InProgress.
        #
        #   ^
        #
        #    * Inventory jobs.
        #
        #   ^
        #   @return [String]

        # @!attribute [rw] archive_sha256_tree_hash
        #   The SHA256 tree hash of the entire archive for an archive retrieval.
        #   For inventory retrieval jobs, this field is null.
        #   @return [String]

        # @!attribute [rw] retrieval_byte_range
        #   The retrieved byte range for archive retrieval jobs in the form
        #   \"*StartByteValue*-*EndByteValue*\" If no range was specified in the
        #   archive retrieval, then the whole archive is retrieved and
        #   *StartByteValue* equals 0 and *EndByteValue* equals the size of the
        #   archive minus 1. For inventory retrieval jobs this field is null.
        #   @return [String]

        # @!attribute [rw] inventory_retrieval_parameters
        #   Parameters used for range inventory retrieval.
        #   @return [Types::InventoryRetrievalJobDescription]

      end

      # Provides options for initiating an Amazon Glacier job.
      # @note When making an API call, pass InitiateJobInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         job_parameters: {
      #           format: "string",
      #           type: "string",
      #           archive_id: "string",
      #           description: "string",
      #           sns_topic: "string",
      #           retrieval_byte_range: "string",
      #           inventory_retrieval_parameters: {
      #             start_date: Time.now,
      #             end_date: Time.now,
      #             limit: "string",
      #             marker: "string",
      #           },
      #         },
      #       }
      class InitiateJobInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :job_parameters)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] job_parameters
        #   Provides options for specifying job information.
        #   @return [Types::JobParameters]

      end

      # Contains the Amazon Glacier response to your request.
      class InitiateJobOutput < Aws::Structure.new(
        :location,
        :job_id)

        # @!attribute [rw] location
        #   The relative URI path of the job.
        #   @return [String]

        # @!attribute [rw] job_id
        #   The ID of the job.
        #   @return [String]

      end

      # Provides options for initiating a multipart upload to an Amazon
      # Glacier vault.
      # @note When making an API call, pass InitiateMultipartUploadInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         archive_description: "string",
      #         part_size: 1,
      #       }
      class InitiateMultipartUploadInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :archive_description,
        :part_size)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] archive_description
        #   The archive description that you are uploading in parts.
        #
        #   The part size must be a megabyte (1024 KB) multiplied by a power of
        #   2, for example 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB),
        #   8388608 (8 MB), and so on. The minimum allowable part size is 1 MB,
        #   and the maximum is 4 GB (4096 MB).
        #   @return [String]

        # @!attribute [rw] part_size
        #   The size of each part except the last, in bytes. The last part can
        #   be smaller than this part size.
        #   @return [Integer]

      end

      # The Amazon Glacier response to your request.
      class InitiateMultipartUploadOutput < Aws::Structure.new(
        :location,
        :upload_id)

        # @!attribute [rw] location
        #   The relative URI path of the multipart upload ID Amazon Glacier
        #   created.
        #   @return [String]

        # @!attribute [rw] upload_id
        #   The ID of the multipart upload. This value is also included as part
        #   of the location.
        #   @return [String]

      end

      # The input values for `InitiateVaultLock`.
      # @note When making an API call, pass InitiateVaultLockInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         policy: {
      #           policy: "string",
      #         },
      #       }
      class InitiateVaultLockInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :policy)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID. This value must match
        #   the AWS account ID associated with the credentials used to sign the
        #   request. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you specify your account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] policy
        #   The vault lock policy as a JSON string, which uses \"\\\" as an
        #   escape character.
        #   @return [Types::VaultLockPolicy]

      end

      # Contains the Amazon Glacier response to your request.
      class InitiateVaultLockOutput < Aws::Structure.new(
        :lock_id)

        # @!attribute [rw] lock_id
        #   The lock ID, which is used to complete the vault locking process.
        #   @return [String]

      end

      # Describes the options for a range inventory retrieval job.
      class InventoryRetrievalJobDescription < Aws::Structure.new(
        :format,
        :start_date,
        :end_date,
        :limit,
        :marker)

        # @!attribute [rw] format
        #   The output format for the vault inventory list, which is set by the
        #   **InitiateJob** request when initiating a job to retrieve a vault
        #   inventory. Valid values are \"CSV\" and \"JSON\".
        #   @return [String]

        # @!attribute [rw] start_date
        #   The start of the date range in UTC for vault inventory retrieval
        #   that includes archives created on or after this date. A string
        #   representation of ISO 8601 date format, for example,
        #   2013-03-20T17:03:43Z.
        #   @return [Time]

        # @!attribute [rw] end_date
        #   The end of the date range in UTC for vault inventory retrieval that
        #   includes archives created before this date. A string representation
        #   of ISO 8601 date format, for example, 2013-03-20T17:03:43Z.
        #   @return [Time]

        # @!attribute [rw] limit
        #   Specifies the maximum number of inventory items returned per vault
        #   inventory retrieval request. This limit is set when initiating the
        #   job with the a **InitiateJob** request.
        #   @return [String]

        # @!attribute [rw] marker
        #   An opaque string that represents where to continue pagination of the
        #   vault inventory retrieval results. You use the marker in a new
        #   **InitiateJob** request to obtain additional inventory items. If
        #   there are no more inventory items, this value is `null`. For more
        #   information, see [ Range Inventory Retrieval][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html#api-initiate-job-post-vault-inventory-list-filtering
        #   @return [String]

      end

      # Provides options for specifying a range inventory retrieval job.
      # @note When making an API call, pass InventoryRetrievalJobInput
      #   data as a hash:
      #
      #       {
      #         start_date: Time.now,
      #         end_date: Time.now,
      #         limit: "string",
      #         marker: "string",
      #       }
      class InventoryRetrievalJobInput < Aws::Structure.new(
        :start_date,
        :end_date,
        :limit,
        :marker)

        # @!attribute [rw] start_date
        #   The start of the date range in UTC for vault inventory retrieval
        #   that includes archives created on or after this date. A string
        #   representation of ISO 8601 date format, for example,
        #   2013-03-20T17:03:43Z.
        #   @return [Time]

        # @!attribute [rw] end_date
        #   The end of the date range in UTC for vault inventory retrieval that
        #   includes archives created before this date. A string representation
        #   of ISO 8601 date format, for example, 2013-03-20T17:03:43Z.
        #   @return [Time]

        # @!attribute [rw] limit
        #   Specifies the maximum number of inventory items returned per vault
        #   inventory retrieval request. Valid values are greater than or equal
        #   to 1.
        #   @return [String]

        # @!attribute [rw] marker
        #   An opaque string that represents where to continue pagination of the
        #   vault inventory retrieval results. You use the marker in a new
        #   **InitiateJob** request to obtain additional inventory items. If
        #   there are no more inventory items, this value is `null`.
        #   @return [String]

      end

      # Provides options for defining a job.
      # @note When making an API call, pass JobParameters
      #   data as a hash:
      #
      #       {
      #         format: "string",
      #         type: "string",
      #         archive_id: "string",
      #         description: "string",
      #         sns_topic: "string",
      #         retrieval_byte_range: "string",
      #         inventory_retrieval_parameters: {
      #           start_date: Time.now,
      #           end_date: Time.now,
      #           limit: "string",
      #           marker: "string",
      #         },
      #       }
      class JobParameters < Aws::Structure.new(
        :format,
        :type,
        :archive_id,
        :description,
        :sns_topic,
        :retrieval_byte_range,
        :inventory_retrieval_parameters)

        # @!attribute [rw] format
        #   When initiating a job to retrieve a vault inventory, you can
        #   optionally add this parameter to your request to specify the output
        #   format. If you are initiating an inventory job and do not specify a
        #   Format field, JSON is the default format. Valid values are \"CSV\"
        #   and \"JSON\".
        #   @return [String]

        # @!attribute [rw] type
        #   The job type. You can initiate a job to retrieve an archive or get
        #   an inventory of a vault. Valid values are \"archive-retrieval\" and
        #   \"inventory-retrieval\".
        #   @return [String]

        # @!attribute [rw] archive_id
        #   The ID of the archive that you want to retrieve. This field is
        #   required only if `Type` is set to archive-retrieval. An error occurs
        #   if you specify this request parameter for an inventory retrieval job
        #   request.
        #   @return [String]

        # @!attribute [rw] description
        #   The optional description for the job. The description must be less
        #   than or equal to 1,024 bytes. The allowable characters are 7-bit
        #   ASCII without control codes-specifically, ASCII values 32-126
        #   decimal or 0x20-0x7E hexadecimal.
        #   @return [String]

        # @!attribute [rw] sns_topic
        #   The Amazon SNS topic ARN to which Amazon Glacier sends a
        #   notification when the job is completed and the output is ready for
        #   you to download. The specified topic publishes the notification to
        #   its subscribers. The SNS topic must exist.
        #   @return [String]

        # @!attribute [rw] retrieval_byte_range
        #   The byte range to retrieve for an archive retrieval. in the form
        #   \"*StartByteValue*-*EndByteValue*\" If not specified, the whole
        #   archive is retrieved. If specified, the byte range must be megabyte
        #   (1024\*1024) aligned which means that *StartByteValue* must be
        #   divisible by 1 MB and *EndByteValue* plus 1 must be divisible by 1
        #   MB or be the end of the archive specified as the archive byte size
        #   value minus 1. If RetrievalByteRange is not megabyte aligned, this
        #   operation returns a 400 response.
        #
        #   An error occurs if you specify this field for an inventory retrieval
        #   job request.
        #   @return [String]

        # @!attribute [rw] inventory_retrieval_parameters
        #   Input parameters used for range inventory retrieval.
        #   @return [Types::InventoryRetrievalJobInput]

      end

      # Provides options for retrieving a job list for an Amazon Glacier
      # vault.
      # @note When making an API call, pass ListJobsInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         limit: 1,
      #         marker: "string",
      #         statuscode: "string",
      #         completed: "string",
      #       }
      class ListJobsInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :limit,
        :marker,
        :statuscode,
        :completed)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] limit
        #   Specifies that the response be limited to the specified number of
        #   items or fewer. If not specified, the List Jobs operation returns up
        #   to 1,000 jobs.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   An opaque string used for pagination. This value specifies the job
        #   at which the listing of jobs should begin. Get the marker value from
        #   a previous List Jobs response. You need only include the marker if
        #   you are continuing the pagination of results started in a previous
        #   List Jobs request.
        #   @return [String]

        # @!attribute [rw] statuscode
        #   Specifies the type of job status to return. You can specify the
        #   following values: \"InProgress\", \"Succeeded\", or \"Failed\".
        #   @return [String]

        # @!attribute [rw] completed
        #   Specifies the state of the jobs to return. You can specify `true` or
        #   `false`.
        #   @return [String]

      end

      # Contains the Amazon Glacier response to your request.
      class ListJobsOutput < Aws::Structure.new(
        :job_list,
        :marker)

        # @!attribute [rw] job_list
        #   A list of job objects. Each job object contains metadata describing
        #   the job.
        #   @return [Array<Types::GlacierJobDescription>]

        # @!attribute [rw] marker
        #   An opaque string that represents where to continue pagination of the
        #   results. You use this value in a new List Jobs request to obtain
        #   more jobs in the list. If there are no more jobs, this value is
        #   `null`.
        #   @return [String]

      end

      # Provides options for retrieving list of in-progress multipart uploads
      # for an Amazon Glacier vault.
      # @note When making an API call, pass ListMultipartUploadsInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         marker: "string",
      #         limit: 1,
      #       }
      class ListMultipartUploadsInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :marker,
        :limit)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] marker
        #   An opaque string used for pagination. This value specifies the
        #   upload at which the listing of uploads should begin. Get the marker
        #   value from a previous List Uploads response. You need only include
        #   the marker if you are continuing the pagination of results started
        #   in a previous List Uploads request.
        #   @return [String]

        # @!attribute [rw] limit
        #   Specifies the maximum number of uploads returned in the response
        #   body. If this value is not specified, the List Uploads operation
        #   returns up to 1,000 uploads.
        #   @return [Integer]

      end

      # Contains the Amazon Glacier response to your request.
      class ListMultipartUploadsOutput < Aws::Structure.new(
        :uploads_list,
        :marker)

        # @!attribute [rw] uploads_list
        #   A list of in-progress multipart uploads.
        #   @return [Array<Types::UploadListElement>]

        # @!attribute [rw] marker
        #   An opaque string that represents where to continue pagination of the
        #   results. You use the marker in a new List Multipart Uploads request
        #   to obtain more uploads in the list. If there are no more uploads,
        #   this value is `null`.
        #   @return [String]

      end

      # Provides options for retrieving a list of parts of an archive that
      # have been uploaded in a specific multipart upload.
      # @note When making an API call, pass ListPartsInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         upload_id: "string", # required
      #         marker: "string",
      #         limit: 1,
      #       }
      class ListPartsInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :upload_id,
        :marker,
        :limit)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] upload_id
        #   The upload ID of the multipart upload.
        #   @return [String]

        # @!attribute [rw] marker
        #   An opaque string used for pagination. This value specifies the part
        #   at which the listing of parts should begin. Get the marker value
        #   from the response of a previous List Parts response. You need only
        #   include the marker if you are continuing the pagination of results
        #   started in a previous List Parts request.
        #   @return [String]

        # @!attribute [rw] limit
        #   Specifies the maximum number of parts returned in the response body.
        #   If this value is not specified, the List Parts operation returns up
        #   to 1,000 uploads.
        #   @return [Integer]

      end

      # Contains the Amazon Glacier response to your request.
      class ListPartsOutput < Aws::Structure.new(
        :multipart_upload_id,
        :vault_arn,
        :archive_description,
        :part_size_in_bytes,
        :creation_date,
        :parts,
        :marker)

        # @!attribute [rw] multipart_upload_id
        #   The ID of the upload to which the parts are associated.
        #   @return [String]

        # @!attribute [rw] vault_arn
        #   The Amazon Resource Name (ARN) of the vault to which the multipart
        #   upload was initiated.
        #   @return [String]

        # @!attribute [rw] archive_description
        #   The description of the archive that was specified in the Initiate
        #   Multipart Upload request.
        #   @return [String]

        # @!attribute [rw] part_size_in_bytes
        #   The part size in bytes.
        #   @return [Integer]

        # @!attribute [rw] creation_date
        #   The UTC time at which the multipart upload was initiated.
        #   @return [Time]

        # @!attribute [rw] parts
        #   A list of the part sizes of the multipart upload.
        #   @return [Array<Types::PartListElement>]

        # @!attribute [rw] marker
        #   An opaque string that represents where to continue pagination of the
        #   results. You use the marker in a new List Parts request to obtain
        #   more jobs in the list. If there are no more parts, this value is
        #   `null`.
        #   @return [String]

      end

      # The input value for `ListTagsForVaultInput`.
      # @note When making an API call, pass ListTagsForVaultInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #       }
      class ListTagsForVaultInput < Aws::Structure.new(
        :account_id,
        :vault_name)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

      end

      # Contains the Amazon Glacier response to your request.
      class ListTagsForVaultOutput < Aws::Structure.new(
        :tags)

        # @!attribute [rw] tags
        #   The tags attached to the vault. Each tag is composed of a key and a
        #   value.
        #   @return [Hash<String,String>]

      end

      # Provides options to retrieve the vault list owned by the calling
      # user\'s account. The list provides metadata information for each
      # vault.
      # @note When making an API call, pass ListVaultsInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         marker: "string",
      #         limit: 1,
      #       }
      class ListVaultsInput < Aws::Structure.new(
        :account_id,
        :marker,
        :limit)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID. This value must match
        #   the AWS account ID associated with the credentials used to sign the
        #   request. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you specify your account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] marker
        #   A string used for pagination. The marker specifies the vault ARN
        #   after which the listing of vaults should begin.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of items returned in the response. If you don\'t
        #   specify a value, the List Vaults operation returns up to 1,000
        #   items.
        #   @return [Integer]

      end

      # Contains the Amazon Glacier response to your request.
      class ListVaultsOutput < Aws::Structure.new(
        :vault_list,
        :marker)

        # @!attribute [rw] vault_list
        #   List of vaults.
        #   @return [Array<Types::DescribeVaultOutput>]

        # @!attribute [rw] marker
        #   The vault ARN at which to continue pagination of the results. You
        #   use the marker in another List Vaults request to obtain more vaults
        #   in the list.
        #   @return [String]

      end

      # A list of the part sizes of the multipart upload.
      class PartListElement < Aws::Structure.new(
        :range_in_bytes,
        :sha256_tree_hash)

        # @!attribute [rw] range_in_bytes
        #   The byte range of a part, inclusive of the upper value of the range.
        #   @return [String]

        # @!attribute [rw] sha256_tree_hash
        #   The SHA256 tree hash value that Amazon Glacier calculated for the
        #   part. This field is never `null`.
        #   @return [String]

      end

      # The input value for `RemoveTagsFromVaultInput`.
      # @note When making an API call, pass RemoveTagsFromVaultInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         tag_keys: ["string"],
      #       }
      class RemoveTagsFromVaultInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :tag_keys)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] tag_keys
        #   A list of tag keys. Each corresponding tag is removed from the
        #   vault.
        #   @return [Array<String>]

      end

      # SetDataRetrievalPolicy input.
      # @note When making an API call, pass SetDataRetrievalPolicyInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         policy: {
      #           rules: [
      #             {
      #               strategy: "string",
      #               bytes_per_hour: 1,
      #             },
      #           ],
      #         },
      #       }
      class SetDataRetrievalPolicyInput < Aws::Structure.new(
        :account_id,
        :policy)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID. This value must match
        #   the AWS account ID associated with the credentials used to sign the
        #   request. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you specify your account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] policy
        #   The data retrieval policy in JSON format.
        #   @return [Types::DataRetrievalPolicy]

      end

      # SetVaultAccessPolicy input.
      # @note When making an API call, pass SetVaultAccessPolicyInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         policy: {
      #           policy: "string",
      #         },
      #       }
      class SetVaultAccessPolicyInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :policy)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] policy
        #   The vault access policy as a JSON string.
        #   @return [Types::VaultAccessPolicy]

      end

      # Provides options to configure notifications that will be sent when
      # specific events happen to a vault.
      # @note When making an API call, pass SetVaultNotificationsInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         vault_notification_config: {
      #           sns_topic: "string",
      #           events: ["string"],
      #         },
      #       }
      class SetVaultNotificationsInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :vault_notification_config)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] vault_notification_config
        #   Provides options for specifying notification configuration.
        #   @return [Types::VaultNotificationConfig]

      end

      # Provides options to add an archive to a vault.
      # @note When making an API call, pass UploadArchiveInput
      #   data as a hash:
      #
      #       {
      #         vault_name: "string", # required
      #         account_id: "string", # required
      #         archive_description: "string",
      #         checksum: "string",
      #         body: "data",
      #       }
      class UploadArchiveInput < Aws::Structure.new(
        :vault_name,
        :account_id,
        :archive_description,
        :checksum,
        :body)

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] archive_description
        #   The optional description of the archive you are uploading.
        #   @return [String]

        # @!attribute [rw] checksum
        #   The SHA256 tree hash of the data being uploaded.
        #   @return [String]

        # @!attribute [rw] body
        #   The data to upload.
        #   @return [IO]

      end

      # A list of in-progress multipart uploads for a vault.
      class UploadListElement < Aws::Structure.new(
        :multipart_upload_id,
        :vault_arn,
        :archive_description,
        :part_size_in_bytes,
        :creation_date)

        # @!attribute [rw] multipart_upload_id
        #   The ID of a multipart upload.
        #   @return [String]

        # @!attribute [rw] vault_arn
        #   The Amazon Resource Name (ARN) of the vault that contains the
        #   archive.
        #   @return [String]

        # @!attribute [rw] archive_description
        #   The description of the archive that was specified in the Initiate
        #   Multipart Upload request.
        #   @return [String]

        # @!attribute [rw] part_size_in_bytes
        #   The part size, in bytes, specified in the Initiate Multipart Upload
        #   request. This is the size of all the parts in the upload except the
        #   last part, which may be smaller than this size.
        #   @return [Integer]

        # @!attribute [rw] creation_date
        #   The UTC time at which the multipart upload was initiated.
        #   @return [Time]

      end

      # Provides options to upload a part of an archive in a multipart upload
      # operation.
      # @note When making an API call, pass UploadMultipartPartInput
      #   data as a hash:
      #
      #       {
      #         account_id: "string", # required
      #         vault_name: "string", # required
      #         upload_id: "string", # required
      #         checksum: "string",
      #         range: "string",
      #         body: "data",
      #       }
      class UploadMultipartPartInput < Aws::Structure.new(
        :account_id,
        :vault_name,
        :upload_id,
        :checksum,
        :range,
        :body)

        # @!attribute [rw] account_id
        #   The `AccountId` value is the AWS account ID of the account that owns
        #   the vault. You can either specify an AWS account ID or optionally a
        #   single apos`-`apos (hyphen), in which case Amazon Glacier uses the
        #   AWS account ID associated with the credentials used to sign the
        #   request. If you use an account ID, do not include any hyphens
        #   (apos-apos) in the ID.
        #   @return [String]

        # @!attribute [rw] vault_name
        #   The name of the vault.
        #   @return [String]

        # @!attribute [rw] upload_id
        #   The upload ID of the multipart upload.
        #   @return [String]

        # @!attribute [rw] checksum
        #   The SHA256 tree hash of the data being uploaded.
        #   @return [String]

        # @!attribute [rw] range
        #   Identifies the range of bytes in the assembled archive that will be
        #   uploaded in this part. Amazon Glacier uses this information to
        #   assemble the archive in the proper sequence. The format of this
        #   header follows RFC 2616. An example header is Content-Range:bytes
        #   0-4194303/\*.
        #   @return [String]

        # @!attribute [rw] body
        #   The data to upload.
        #   @return [IO]

      end

      # Contains the Amazon Glacier response to your request.
      class UploadMultipartPartOutput < Aws::Structure.new(
        :checksum)

        # @!attribute [rw] checksum
        #   The SHA256 tree hash that Amazon Glacier computed for the uploaded
        #   part.
        #   @return [String]

      end

      # Contains the vault access policy.
      # @note When making an API call, pass VaultAccessPolicy
      #   data as a hash:
      #
      #       {
      #         policy: "string",
      #       }
      class VaultAccessPolicy < Aws::Structure.new(
        :policy)

        # @!attribute [rw] policy
        #   The vault access policy.
        #   @return [String]

      end

      # Contains the vault lock policy.
      # @note When making an API call, pass VaultLockPolicy
      #   data as a hash:
      #
      #       {
      #         policy: "string",
      #       }
      class VaultLockPolicy < Aws::Structure.new(
        :policy)

        # @!attribute [rw] policy
        #   The vault lock policy.
        #   @return [String]

      end

      # Represents a vault\'s notification configuration.
      # @note When making an API call, pass VaultNotificationConfig
      #   data as a hash:
      #
      #       {
      #         sns_topic: "string",
      #         events: ["string"],
      #       }
      class VaultNotificationConfig < Aws::Structure.new(
        :sns_topic,
        :events)

        # @!attribute [rw] sns_topic
        #   The Amazon Simple Notification Service (Amazon SNS) topic Amazon
        #   Resource Name (ARN).
        #   @return [String]

        # @!attribute [rw] events
        #   A list of one or more events for which Amazon Glacier will send a
        #   notification to the specified Amazon SNS topic.
        #   @return [Array<String>]

      end

    end
  end
end