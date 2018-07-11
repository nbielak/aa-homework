# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string           not null
#  password_digest :string
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :username, :session_token, presence: true
  validates :password_digest, presence: {message: "Can't be blank"}
  validates :password, length: {minimum: 6, allow_nil: true}
  before_validation :ensure_session_token

  attr_reader :password

  def self.find_by_credentials(username, password)
    User.find_by(username: username)
  end

  def reset_session_token!
    @session_token = nil
    self.save
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Pasword.create(password)
  end

  private

  def self.generate_session_token
    @session_token = SecureRandom::urlsafe_base64
  end

  def ensure_session_token
    @session_token ||= User.generate_session_token
end
