# frozen_string_literal: true

# RepliesMailbox class
class RepliesMailbox < ApplicationMailbox
  MATCHER = /reply-(.+)@reply.example.com/i

  before_processing :ensure_user

  def process
    return unless user.present?

    discussion.comments.create(
      user: user,
      body: mail.decoded
    )
  end

  def discussion
    @discussion ||= Discussion.find(discussion_id)
  end

  def discussion_id
    recipient = mail.recipient.find{ |r| MATCHER.match?(r) }
    recipient[MATCHER, 1]
  end

  private

  def user
    binding.debug
    @user ||= User.find(email: mail.from)
  end

  def ensure_user
    binding.debug
    bounce_with UserMailer.missing(inbound_email) if user.nil?
  end
end
