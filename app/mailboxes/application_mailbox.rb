# frozen_string_literal: true

# ApplicationMailbox class
class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  routing RepliesMailbox::MATCHER => :replies
end
