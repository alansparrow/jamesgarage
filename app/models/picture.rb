# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  album_id   :integer
#  created_at :datetime
#  updated_at :datetime
#  src_link   :string(255)
#

class Picture < ActiveRecord::Base
  belongs_to :album

  def uploaded_picture=(incoming_picture)
    name = self.id.to_s + ".jpg"
    
    # create the file path
    directory = "public/images"
    path = File.join(directory, name)


    self.src_link = name

    # write the file
    File.open(path, "wb") { |f| f.write(incoming_picture.read) }
    
  end

end
