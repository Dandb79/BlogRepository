class HomeController < ApplicationController
  def index
    @posts = Dir.entries("app/views/posts")
    @posts = @posts.sort_by { |x| File.mtime("app/views/posts/"+x)}
    @posts = @posts.select { |x| x.end_with?(".html.erb")}
    @posts = @posts.map { |x| x.sub! ".html.erb", ""}
  end
end
