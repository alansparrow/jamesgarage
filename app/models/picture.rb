# == Schema Information
#
# Table name: pictures
#
#  id           :integer          not null, primary key
#  album_id     :integer
#  filename     :string(255)
#  content_type :string(255)
#  data         :binary
#  created_at   :datetime
#  updated_at   :datetime
#

class Picture < ActiveRecord::Base
  belongs_to :album
end
