module CommentsHelper
  NOTICE = {
    create: 'Comment created successfully',
    update: 'Comment updated successfully',
    delete: 'Comment deleted successfully',
    error: 'Something went wrong'
  }.freeze

  def comment_notice_stream(message:, status:)
    turbo_stream.replace 'notice', partial: 'posts/notice', locals: { notice: NOTICE[message], status: status }
  end

  def form_comment_stream(comment:)
    turbo_stream.replace 'form', partial: 'form', locals: { comments: comment }
  end
end
