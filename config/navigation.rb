# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|

    primary.item :home, "Home", lesson_pages_home_path
    primary.item :questions, "Questions", lesson_pages_questions_path
    primary.item :discussion, "Discussion", lesson_pages_discussion_path


    # primary.item :key_1, 'name', url, options
    # primary.item :key_2, 'name', url, options do |sub_nav|
    #   sub_nav.item :key_2_1, 'name', url, options
    # end

    # primary.item :key_3, 'Admin', url, :class => 'special', :if => Proc.new { current_user.admin? }
    # primary.item :key_4, 'Account', url, :unless => Proc.new { logged_in? }
  end

end
