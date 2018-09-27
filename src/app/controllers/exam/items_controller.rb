class Exam::ItemsController < ApplicationController
  protect_from_forgery :except => [:create]

  def create
    exam_item_service = ExamItemService.new
    added_exam_item = exam_item_service.add JSON.parse(request.body.read)
    render :json => added_exam_item
  end
end
