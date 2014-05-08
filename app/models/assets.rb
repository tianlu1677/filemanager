class Asset
  include Mongoid::Document
  include Mongoid::Timestamps

  field :viewable_id,             type: Integer  #
  field :title,                   type: String   #文件重命名
  field :asset_width,             type: Integer  # 文件宽度
  field :asset_height,            type: Integer  #文件高度
  field :asset_size,              type: Integer  # 文件大小
  field :asset_type,              type: String   # 文件类型
  field :asset_file_name,         type: String   # 文件原名称
  field :asset_updated_at,        type: DateTime # 文件上传时间
  field :link,                    type: String   # 文件链接

  belongs_to :viewable, polymorphic: true
  #validates :link, presence: true, allow_blank: false
end
