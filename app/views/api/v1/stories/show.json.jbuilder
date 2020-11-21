json.extract! @story, :id, :title, :image, :content
json.comments @story.comments do |comment|
  json.extract! comment, :id, :name, :content
  json.date comment.created_at.strftime("%m/%d/%y")
end
