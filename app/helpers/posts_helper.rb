module PostsHelper
  NOTICE = {
    create: 'Post created successfully',
    update: 'Post updated successfully',
    delete: 'Post deleted successfully',
    error: 'Something went wrong'
  }.freeze

  def notice_stream(message:, status:)
    if message.present? && status.present?
      turbo_stream.replace 'notice', partial: 'notice', locals: { notice: NOTICE[message], status: status }
    else
      turbo_stream.replace 'notice', html: "<div></div>" 
    end
  end

  def form_post_stream(post:)
    turbo_stream.replace 'form', partial: 'form', locals: { post: post }
  end
end
