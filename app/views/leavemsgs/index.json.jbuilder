json.array!(@leavemsgs) do |leavemsg|
  json.extract! leavemsg, :id, :msgname, :msgcontent
  json.url leavemsg_url(leavemsg, format: :json)
end
