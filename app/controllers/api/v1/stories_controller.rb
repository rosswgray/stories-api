class Api::V1::StoriesController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: %i[create update]
  before_action :set_story, only: %i[show update destroy]

  def index
    @stories = Story.all
    # render json: @stories #Just for testing
  end

  def show; end

  def update
    if @story.update(story_params)
      render :show
    else
      render_error
    end
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @story.destroy
    head :no_content
    # No need to create a `destroy.json.jbuilder` view
  end

  private

  def set_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:title, :content, :image)
  end

  def render_error
    render  json: { errors: @story.errors.full_messages },
            status: :unprocessable_entity
  end
end
