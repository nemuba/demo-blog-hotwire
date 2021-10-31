module PostsHelper
  NOTICE = {
    create: 'Post created successfully',
    update: 'Post updated successfully',
    delete: 'Post deleted successfully',
    error: 'Something went wrong'
  }.freeze

  def notice_stream(message:, status:)
    turbo_stream.replace 'notice', partial: 'notice', locals: { notice: NOTICE[message], status: status }
  end

  def form_post_stream(post:)
    turbo_stream.replace 'form', partial: 'form', locals: { post: post }
  end
end
