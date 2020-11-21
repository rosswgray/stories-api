json.stories do
  json.array! @stories do |story|
    json.extract! story, :id, :title, :image, :content
    json.publication_date story.created_at.strftime("%m/%d/%y")
  end
end
