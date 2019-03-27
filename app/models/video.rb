class Video < ActiveRecord::Base
    mount_uploader :file, VideoUploader
    acts_as_votable
    
    # def self.search(search)
    #     where("title LIKE ?", "%#{search}%") 
    # end
    def self.search(search, id)
        if search
            where(['title LIKE ?', "%#{search}%"])
        end
    end
end
