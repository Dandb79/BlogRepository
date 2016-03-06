class HomeController < ApplicationController
  def index
    @posts = Dir.entries("app/views/posts")
    @posts = @posts.select { |x| x.end_with?(".html.erb")}
    @posts = @posts.map { |x| x.sub! ".html.erb", ""}
    @posts = @posts.sort_by { |x| File.mtime("app/views/posts/"+x+".html.erb")}
    @posts = @posts.reverse!
  end
end
