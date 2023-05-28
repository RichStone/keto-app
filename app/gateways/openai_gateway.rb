class OpenaiGateway
  def initialize
    # https://edgeguides.rubyonrails.org/security.html#environmental-security
    @client = OpenAI::Client.new(access_token: Rails.credentials.openai.api_key)
  end

  # Returns the response from OpenAI's API.
  def recipe_question(params)
    @client.chat(parameters: params)
  end
end
