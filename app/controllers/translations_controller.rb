class TranslationsController < ApplicationController
  def create
    t = Translation.new()
    t.language = "Deutsch"
    t.key = params[:translation][:key]
    t.translation = params[:translation][:translation]
    t.project_id = params[:translation][:project_id]
    t.save
    redirect_to projects_path
  end
end