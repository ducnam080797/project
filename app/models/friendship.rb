class Friendship < ActiveRecord::Base 
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"
  enum status: { request:1, accept:2}
  scope :accept_friend, -> status {where status: "accept"}
  scope :request_friend, -> status {where status: "request"}

  def status_invitation
    update status: 1
  end
end
