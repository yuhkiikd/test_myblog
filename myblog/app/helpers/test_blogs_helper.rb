module TestBlogsHelper
    def choose_new_or_edit
        if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
            confirm_test_blogs_path
        elsif action_name == 'edit'
            test_blog_path
        end
    end
end
