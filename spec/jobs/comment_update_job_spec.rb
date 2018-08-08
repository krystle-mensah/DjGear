require 'rails_helper'

RSpec.describe CommentUpdateJob, type: :job do
  queue_as :default

  def perform(comment, current_user)
    ProductChannel.broadcast_to(@product.id, comment: CommentsController.render(partial: 'comments/comment', locals: {comment: @comment, current_user: current_user }), average_rating: @product.average_rating)
  end
  # pending "add some examples to (or delete) #{__FILE__}"

  private

  def render_comment(comment, current_user)
    CommentsController.render(partial: 'comments/comment', locals: { comment: comment, current_user: current_user })
  end
end
