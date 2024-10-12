class Video < ApplicationRecord
    belongs_to :user
    validates :title,presence:true
    validates :url, presence:true, format: { with: /\Ahttps?:\/\/(www\.)?(youtube\.com|youtu\.be)\/.+\z/, message: "must be a valid YouTube URL" }
end
