class RecipeQuestionsController
  def new
    @recipe_question = RecipeQuestion.new
  end

  def create
    response = OpenaiGateway.new.recipe_question(recipe_question_params)
    # redirect to show_path with response
    show
  end

  def show
    # will have a view
    # with a "content" div
    # that we pass the response to
    @content = response[:content]
  end

  private

  def recipe_question_params
    params.require(:recipe_question)
  end
end
