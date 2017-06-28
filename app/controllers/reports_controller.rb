class ReportsController < ApplicationController
  expose(:reports)
  expose(:subject_items){ SubjectItem.includes(:teacher, :students) }
  def show
    render :subjects
  end
end
