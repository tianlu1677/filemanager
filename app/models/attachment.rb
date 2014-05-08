class Attachment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :viewable_id, type: Integer #
  field :title, type: String #文件重命名
  field :attachment_width, type: Integer # 文件宽度
  field :attachment_height, type: Integer #文件高度
  field :attachment_size, type: Integer # 文件大小
  field :attachment_type, type: String # 文件类型
  field :attachment_name, type: String # 文件原名称
  field :attachment_updated_at, type: DateTime # 文件上传时间
  field :attachment_category, type: String # 文件所属的类别
  field :link, type: String # 文件链接

  belongs_to :viewable, polymorphic: true

  mount_uploader :link, AttachmentUploader

end
