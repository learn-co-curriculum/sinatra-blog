task :environment do
  require_relative './config/environment'
end

namespace :db do
  task :migrate => [:environment] do
    require_relative './db/migrations/01_create_posts'
    CreatePosts.migrate(:up)
  end

  task :seed => [:environment] do
    post = Post.create(:title => "Hello World", :content => "This is a posts content.")
  end
end
