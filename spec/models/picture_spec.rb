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

require 'spec_helper'

describe Picture do
  pending "add some examples to (or delete) #{__FILE__}"
end
